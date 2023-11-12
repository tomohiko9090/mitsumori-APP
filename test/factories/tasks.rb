FactoryBot.define do
  factory :task, aliases: [:my_task, :admin_task] do
    association :user
    estimated_time { 50 }
    actual_time { 50 }
    task_name { "リファクタリング" }
    status { 0 }
  end
end
