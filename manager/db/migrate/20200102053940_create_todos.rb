class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.integer :parent_id, foreign_key: true

      t.timestamps
    end
  end
end
