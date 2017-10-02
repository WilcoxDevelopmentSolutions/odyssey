FactoryGirl.define do
  factory :user do
    username "fred"
    first_name "Fred"
    last_name "Astaire"
    email "fred.astaire@example.com"
    role 1
  end
end
