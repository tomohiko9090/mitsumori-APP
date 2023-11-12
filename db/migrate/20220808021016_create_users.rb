# typed: true
class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :level, default: 1
      t.date :birth_date
      t.string :name
      t.string :nickname
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
