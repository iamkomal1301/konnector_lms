FactoryBot.define do
  factory :enrollment do
    association :student, factory: [:user, :student]
    association :batch
    status { :pending }
  end
end

