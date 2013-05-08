class ChangeTimeTotalFromTimeSections < ActiveRecord::Migration
  def up
    change_column :time_sections, :time_total, :integer
  end

  def down
    change_column :time_sections, :time_total, :string
  end
end
