FactoryBot.define do
  factory :user do
    username "test1"
    password_digest "MyString"
    person create(:person)
  end
end
