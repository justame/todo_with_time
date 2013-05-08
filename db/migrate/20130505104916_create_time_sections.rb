class CreateTimeSections < ActiveRecord::Migration
  def change
    create_table :time_sections do |t|
      t.datetime :time_start
      t.datetime :time_end
      t.string :time_total
      t.string :integer

      t.timestamps
    end
  end
end
