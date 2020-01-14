class CreateConcerns < ActiveRecord::Migration[6.0]
  def change
    create_table :concerns do |t|
      t.string :description, null: false
      t.string :importance, null: false
      t.string :urgency, null: false

      t.timestamps
    end
  end
end
