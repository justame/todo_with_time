class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :title
      t.time :estimate_time
      t.integer :time

      t.timestamps
    end
  end
end
