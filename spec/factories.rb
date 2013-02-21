FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "1qaz@WSX"
    password_confirmation "1qaz@WSX"
  end
end