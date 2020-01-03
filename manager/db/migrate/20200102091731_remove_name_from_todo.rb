class RemoveNameFromTodo < ActiveRecord::Migration[6.0]
  def change
    remove_column :todos, :name
  end
end
