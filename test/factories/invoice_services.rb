FactoryBot.define do
  factory :invoice_service do
    invoice nil
    service nil
    description "MyString"
    value "9.99"
    iva "9.99"
    withholding_tax "9.99"
    withholding_tax_ica "9.99"
  end
end
