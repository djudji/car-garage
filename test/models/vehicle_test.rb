# == Schema Information
#
# Table name: vehicles
#
#  id         :integer          not null, primary key
#  parked     :boolean
#  veh_type   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lic_plate  :string
#  slot_id    :integer
#

require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
