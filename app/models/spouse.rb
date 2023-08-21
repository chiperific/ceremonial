# frozen_string_literal: true

class Spouse < ApplicationRecord
  enum gender: [:unknown, :female, :male, :nonbinary]

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

  private

  def sync_names
    if full_name.present?
      self.forename = full_name.split(" ").first if forename.blank?
      self.surname = full_name.split(" ").last if surname.blank?
    else
      self.full_name = "#{forename} #{surname}"
    end
  end

  def cascade_gender
    GENDER_PRONOUNS.with_indifferent_access[gender].each do |(kattribute, value)|
      send("#{kattribute}=", value)
    end
  end
end
