FactoryGirl.define do
  factory :user do
    username "fred"
    first_name "Fred"
    last_name "Astaire"
    email "fred.astaire@example.com"
    role 1
    password "passw0rd!"
  end

  factory :user_founder do
    username "fred"
    first_name "Fred"
    last_name "Founder"
    email "fred.founder@example.com"
    role 1
    password "passw0rd!"
  end
end
