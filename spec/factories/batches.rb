FactoryBot.define do
  factory :batch do
    name { "Batch KLM" }
    association :course
  end
end
