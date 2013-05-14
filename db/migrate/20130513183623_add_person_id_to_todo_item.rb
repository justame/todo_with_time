class AddPersonIdToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :person_id, :integer
  end
end
