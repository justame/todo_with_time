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

class TodoItem < ActiveRecord::Base
  attr_accessible :time_estimate, :time_total, :title
  has_many :time_sections, :dependent => :destroy
  belongs_to :person
  validates :person_id, :presence => true
  def time_total
    self.time_sections.sum(:time_total)
  end
end
