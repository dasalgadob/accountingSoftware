class Auxiliar < ApplicationRecord
  belongs_to :subaccount
  has_many :services

  before_save do
    self.number_text = self.number.to_s
  end

end
