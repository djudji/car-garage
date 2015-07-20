# == Schema Information
#
# Table name: levels
#
#  id         :integer          not null, primary key
#  number     :integer
#  num_slots  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Level < ActiveRecord::Base
  has_many :slots, dependent: :destroy

  # Auto assignement of Level number
  before_create :assign_number_and_create_slot

  # Used to render a name for simple_form select.
  # By default simple_form collection method looks for a name method/attribute.
  def name
    return "Level #{self.number}"
  end

  # Used for groupped select in vehicle form.
  # Will return slots that are not occupied.
  def available_slots
    Slot.where("level_id = ? AND occupied = ?", self.id, false)
  end

  private

    def assign_number_and_create_slot
      self.number = Level.count + 1
      self.slots.build
    end
end
