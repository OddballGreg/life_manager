class CreateExerciseDays < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_days do |t|
      t.integer :satisfaction, null: false, default: 0

      t.timestamps
    end
  end
end
