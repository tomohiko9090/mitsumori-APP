class Task < ApplicationRecord
    validates :task_name, presence: true, length: { maximum: 255 }
end
