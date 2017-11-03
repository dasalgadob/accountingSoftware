class Grupo < ApplicationRecord
  belongs_to :clase
  has_many :cuentums
end
