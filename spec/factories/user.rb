FactoryGirl.define do
  factory :user do
    name 'Bob Smith'  # default values
    email 'name@example.com'
    password 'password'
    password_confirmation 'password'
  end
end