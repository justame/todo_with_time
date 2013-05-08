class AddParentIdToTimeSections < ActiveRecord::Migration
  def change
    add_column :time_sections, :parent_id, :integer
  end
end
