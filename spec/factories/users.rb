FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password123" }

    trait :admin do
      role { :admin }
    end

    trait :school_admin do
      role { :school_admin }
    end

    trait :student do
      role { :student }
    end
  end
end
