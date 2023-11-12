# typed: strict
class Task < ApplicationRecord
    belongs_to :user
    validates :task_name, presence: true, length: { maximum: 255 }
end
