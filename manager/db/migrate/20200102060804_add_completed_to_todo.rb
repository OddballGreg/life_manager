class AddCompletedToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :completed, :boolean, default: false, null: false
  end
end
