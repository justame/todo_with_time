class ChangeEstimateTimeInTodoItems < ActiveRecord::Migration
  def change
    rename_column :todo_items, :estimate_time, :time_estimate
  end
end
