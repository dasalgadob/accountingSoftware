FactoryBot.define do
  factory :person do
    document_type nil
    document_number ""
    verification_digit 1
    first_name "MyString"
    middle_name "MyString"
    surname "MyString"
    second_surname "MyString"
    business_name "MyString"
    email "MyString"
  end
end
