class Person < ApplicationRecord
  belongs_to :document_type
  before_save :uppercase_fields
  has_many :phone_numbers, dependent: :delete_all
  has_many :locations, dependent: :delete_all


  private
  def uppercase_fields
    first_name.upcase!
    middle_name.upcase!
    surname.upcase!
    second_surname.upcase!
    business_name.upcase!
  end
end
