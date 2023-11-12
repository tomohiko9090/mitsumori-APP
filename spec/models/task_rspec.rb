# typed: false
require 'rails_helper'

RSpec.describe Task, type: :model do
  let!(:task3){ create(
    :task,
    
    )
  }

  it "タスクがfactorybotによって作成されていること" do
    p task3
    expect(task3.task_name).to eq "リファクタリング"
  end

  it "タスク名が255文字以下であること" do
    task_er = Task.new(
      id: 1,
      user_id: 11,
      estimated_time: 50,
      actual_time: 50,
      task_name: "ER図の作成",
      status: 0
    )
    expect(task_er.task_name.length).to be <= 255
  end
end