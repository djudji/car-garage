# == Schema Information
#
# Table name: slots
#
#  id         :integer          not null, primary key
#  occupied   :boolean
#  level_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Slot < ActiveRecord::Base
  belongs_to :level
end
