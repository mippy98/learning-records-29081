FactoryBot.define do
  factory :post do
    title {Faker::Lorem.sentence}
    conclusion {Faker::Lorem.sentence}
    content {Faker::Lorem.sentence}
    image {Faker::Lorem.sentence}
    category_id {Faker::Number.between(from: 2, to: 2)}
    study_time_id {Faker::Number.between(from: 2, to: 2)}
    association :user
  end
end