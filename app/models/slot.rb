# == Schema Information
#
# Table name: slots
#
#  id         :integer          not null, primary key
#  occupied   :boolean          default("f")
#  level_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Slot < ActiveRecord::Base
  belongs_to :level
  has_one :vehicle

  after_find do |slot|
    slot.update(occupied: true) if slot.vehicle != nil
  end

  def name
    return "Slot #{self.level.number}:#{self.class.all.index{ |item| item == self }+1}"
  end
end
