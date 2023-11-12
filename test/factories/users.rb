FactoryBot.define do
  factory :user do
    id { 1 }
    password { "test2" }
    sequence(:name) { |n| "未来のワクワクさん#{n}号機" }
    sequence(:email) { |n| "tomo.k8080#{n}@gmail.com" }
  end
end
