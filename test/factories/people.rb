FactoryBot.define do
  factory :person do
    document_type 
    document_number 123456789
    verification_digit 1
    first_name "Test"
    middle_name "MyString"
    surname "MyString"
    second_surname "MyString"
    business_name "MyString"
    email "MyString"
  end
end
