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
#

class Vehicle < ActiveRecord::Base
  protokoll :lic_plate, :pattern => SecureRandom.hex(3).to_s+"-###%y-"+SecureRandom.hex(2).to_s
end
