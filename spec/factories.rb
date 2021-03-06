FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "andrew#{n}@yandex.ru" }
    password 'qwerty'
    password_confirmation 'qwerty'
    sequence(:username) { |n| "andrew#{n}" }

    association :profile, :factory => :profile
  end

  factory :profile do
    sequence(:first_name) { |n| "Andrew#{n}" }
    sequence(:last_name) { |n| "Hunter#{n}" }
  end

  factory :friendship do
    association :owner, :factory => :user
    association :friend, :factory => :user
  end

  factory :post do
    association :author, :factory => :user
    sequence(:body) { |n| "Post #{n}" }
  end
end