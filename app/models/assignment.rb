# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  name       :text
#  size       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Assignment < ActiveRecord::Base
  attr_accessible :name, :size
end
