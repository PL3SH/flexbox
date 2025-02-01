FactoryBot.define do
  factory :task do
    title { "MyString" }
    description { "MyText" }
    completed { false }
    due_date { "2025-01-31" }
    user { nil }
  end
end
