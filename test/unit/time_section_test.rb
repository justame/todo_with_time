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

require 'test_helper'

class TimeSectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
