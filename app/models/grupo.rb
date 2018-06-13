class Grupo < ApplicationRecord
  belongs_to :clase
  has_many :accounts
  validates :number, uniqueness: true
end
