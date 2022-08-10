class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :estimated_time
      t.integer :end_time

      t.string :task_name
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
