class Person < ApplicationRecord
  belongs_to :document_type
  before_save :uppercase_fields
  has_many :phone_numbers, dependent: :delete_all
  has_many :locations, dependent: :delete_all
  has_many :withholding_tax_locations
  validates :document_number, uniqueness: { scope: [:document_type] }
  private
  def uppercase_fields
    if first_name != nil
      first_name.upcase!
    end
    if middle_name != nil
      middle_name.upcase!
    end
    if surname != nil
      surname.upcase!
    end
    if second_surname != nil
      second_surname.upcase!
    end
    if   business_name != nil
      business_name.upcase!
    end
  end
end
