class Auxiliar < ApplicationRecord
  belongs_to :subaccount
  has_many :services
end
