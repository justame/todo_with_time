# == Schema Information
#
# Table name: time_sections
#
#  id           :integer          not null, primary key
#  time_start   :datetime
#  time_end     :datetime
#  time_total   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  todo_item_id :integer
#

class TimeSection < ActiveRecord::Base
  attr_accessible :time_end, :time_start, :time_total
  belongs_to :todo_item, dependent: :destroy
end
