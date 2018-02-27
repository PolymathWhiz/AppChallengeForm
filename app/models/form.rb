class Form < ApplicationRecord

  enum category: ['Android Developer', 'Web Developer', 'Problem Solver', 'Other']

  VALID_MOBILE_REGEX = /^[0-9]{10}$/

  validates_presence_of :first_name, :last_name, :category, :phone

  validates :phone, format: { with: VALID_MOBILE_REGEX, multiline: true }, allow_blank: true, length: { maximum: 10 }

  validates :category, inclusion: {in: categories.keys}, allow_blank: true
end
