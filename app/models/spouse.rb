# frozen_string_literal: true

class Spouse < ApplicationRecord
  # https://api.rubyonrails.org/v5.1/classes/ActiveRecord/Enum.html
  enum gender: [:unknown, :female, :male, :nonbinary], _prefix: true

  # Use fibbonacci sequence because we sum the primary_ and secondary_ spouse's
  # spiritual_levels and want granularity for these conditions:
  #   primary_spouse is 5,  secondary_spouse is 5 (10) => is_religious is false
  #   primary_spouse is 13, secondary_spouse is 0 (13) => is_religious is false
  #   primary_spouse is 13, secondary_spouse is 3 (16) => is_religious is true
  #   primary_spouse is 8,  secondary_spouse is 8 (16) => is_religious is true
  SPIRITUAL_STATEMENT_MAP = [
    {text: "I am very religious and spiritual", value: 13},
    {text: "I am moderately religious and spiritual", value: 8},
    {text: "I am spiritual but not religious", value: 5},
    {text: "I am unsure about issues of faith and spirituality", value: 3},
    {text: "I am not religious and not spiritual", value: 0},
  ]

  jsonb_accessor :document,
    mother_name: :string,
    father_name: :string,
    step_mother_name: :string,
    step_father_name: :string,
    escort_name: :string

  GENDER_PRONOUNS = {
    nonbinary: {
      nomitive: "them",
      posessive: "their",
      declarative: "spouse",
      pre_declarative: "partner"
    },
    female: {
      nomitive: "her",
      posessive: "her",
      declarative: "wife",
      pre_declarative: "bride"
    },
    male: {
      nomitive: "him",
      posessive: "his",
      declarative: "husband",
      pre_declarative: "groom"
    }
    }

  has_one :ceremony

  before_save :sync_names

  before_save :cascade_gender, if: :will_save_change_to_gender?

  before_save :set_spiritual_level, if: :will_save_change_to_spiritual_statement?

  private

  def sync_names
    if full_name.present?
      self.forename = full_name.split(" ").first if forename.blank?
      self.surname = full_name.split(" ").last if surname.blank?
    else
      self.full_name = "#{forename} #{surname}"
    end

    self.preferred_name = forename if preferred_name.blank?
  end

  def cascade_gender
    GENDER_PRONOUNS.with_indifferent_access[gender].each do |(kattribute, value)|
      send("#{kattribute}=", value)
    end
  end

  def set_spiritual_level
    self.spiritual_level = if spiritual_statement.blank?
      0
    else
      SPIRITUAL_STATEMENT_MAP.find { |statement| statement[:value] == spiritual_statement }[:value]
    end
  end
end
