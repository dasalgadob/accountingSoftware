class Service < ApplicationRecord
  belongs_to :auxiliar
  belongs_to :cost_centre
  belongs_to :account_IVA, class_name: "Auxiliar"
  belongs_to :account_withholding_tax, class_name: "Auxiliar"
  belongs_to :account_withholding_tax_ICA, class_name: "Auxiliar"
end
