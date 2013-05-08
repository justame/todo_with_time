class RemoveIntegerFromTimeSections < ActiveRecord::Migration
  def up
    remove_column :time_sections, :integer
  end

  def down
    #add_column :time_sections,:integer :string
  end
end
