FactoryBot.define do
  factory :service do
    name "MyString"
    account_auxiliar nil
    cost_centre nil
    taxable_income 1
    account_IVA nil
    account_withholding_tax nil
    account_withholding_tax_ICA nil
  end
end
