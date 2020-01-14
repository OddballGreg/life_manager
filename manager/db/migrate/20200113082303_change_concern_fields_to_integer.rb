class ChangeConcernFieldsToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :concerns, :urgency
    add_column :concerns, :urgency, :integer, null: false, default: 1
    remove_column :concerns, :importance
    add_column :concerns, :importance, :integer, null: false, default: 1
  end
end
