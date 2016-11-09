FactoryGirl.define do
  factory :course do
    title "MyString"
    description "MyText"
    content "MyText"
    duration 1
    account_id 1
    active_students 1
    price "9.99"
  end
end
