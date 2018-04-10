class Auxiliar < ApplicationRecord
  belongs_to :subaccount
  has_many :services

  before_save do
    self.number_text = self.number.to_s
  end

  def value_autocomplete
    self.number_text.concat(" #{self.name}")
  end
end
