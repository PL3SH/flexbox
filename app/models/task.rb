class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  scope :incomplete, -> { where(completed: false) }
  scope :completed_tasks, -> { where(completed: true) }



end
