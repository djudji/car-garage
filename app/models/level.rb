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

  private

    def assign_number_and_create_slot
      self.number = Level.count + 1
      self.slots.build
    end
end
