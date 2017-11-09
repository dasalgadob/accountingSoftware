class Account < ApplicationRecord
  belongs_to :grupo
  has_many :subaccounts
end
