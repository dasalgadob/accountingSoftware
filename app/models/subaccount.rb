class Subaccount < ApplicationRecord
  belongs_to :account
  has_many :auxiliars
end
