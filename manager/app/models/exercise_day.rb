class ExerciseDay < ApplicationRecord
  scope :today, -> { find_by(created_at: Date.today) }
  scope :yesterday, -> { find_by(created_at: Date.today - 1.day) }
end
