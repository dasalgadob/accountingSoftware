class WithholdingTaxLocation < ApplicationRecord
  belongs_to :city
  belongs_to :person
end
