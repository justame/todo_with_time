class ChangeParentIdInTimeSections < ActiveRecord::Migration
  def change
    rename_column :time_sections, :parent_id, :todo_item_id
  end
end
