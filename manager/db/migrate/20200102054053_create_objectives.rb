class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.string :name
      t.text :description
      t.datetime :complete_by
      t.string :level

      t.timestamps
    end
  end
end
