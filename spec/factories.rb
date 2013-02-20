FactoryGirl.define do
  factory :user do
    name     "Test User"
    email    "test@example.com"
    password "1qaz@WSX"
    password_confirmation "1qaz@WSX"
  end
end