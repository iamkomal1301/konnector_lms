FactoryBot.define do
  factory :course do
    name { "Test Course KLM" }
    association :school
  end
end
