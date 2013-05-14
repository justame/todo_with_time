# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user
  has_many :todo_items
  validates_associated :todo_items
  validates :user_id , :presence => true
  validates_associated :user
end
