class ChangeTimeFromTodoItems < ActiveRecord::Migration
  def change
    change_table :todo_items do |t|
      t.rename :time, :time_total
    end
    change_column :todo_items, :time_total, :integer
    change_column :todo_items, :estimate_time, :integer
  end
end
