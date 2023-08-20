# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  WUFOO_BASE_URI = "https://mywestmichiganwedding.wufoo.com/api/v3"
end
