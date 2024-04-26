FactoryBot.define do
  factory :review do
    comment { "MyText" }
    stars { 1 }
    movie { nil }
  end
end
