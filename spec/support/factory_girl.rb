require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :organization do
    sequence(:name) { |n| "Organiation#{n}" }
    balance 0
    sequence(:contact_email) {|n| "org_contact#{n}@example.com" }
    sequence(:contact_first_name) {|n| "first_name#{n}" }
    sequence(:contact_last_name) {|n| "last_name#{n}" }
    description "Our org is the best and we love communikey!!!"
  end

end
