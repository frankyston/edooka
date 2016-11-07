FactoryGirl.define do
  factory :user do
    name "John Doe"
    sequence(:email) { |n| "johndoe#{n}@johndoe.com"}
    password "pw"
  end
end
