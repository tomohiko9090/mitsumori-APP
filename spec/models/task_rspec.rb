# typed: false
require 'rails_helper'

RSpec.describe Task, type: :model do
  it "タスク名が255文字以下であること" do
    task = Task.new(
      id: 1,
      user_id: 11,
      estimated_time: 50,
      actual_time: 50,
      task_name: "ER図の作成",
      status: 0
      # action_date:
    )
    expect(task.task_name.length).to be <= 255
  end
end