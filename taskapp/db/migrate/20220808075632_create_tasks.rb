class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :task_name
      t.boolean :status
      t.time :estimated_time
      t.time :end_time

      t.timestamps
    end
  end
end
