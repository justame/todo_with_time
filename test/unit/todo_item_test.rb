# == Schema Information
#
# Table name: todo_items
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  time_estimate :integer
#  time_total    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  person_id     :integer
#

require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
