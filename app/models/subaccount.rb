class Subaccount < ApplicationRecord
  belongs_to :account
  has_many :auxiliars
  validates :number, uniqueness: true
end
