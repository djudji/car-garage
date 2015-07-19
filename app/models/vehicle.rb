class Vehicle < ActiveRecord::Base
  protokoll :lic_plate, :pattern => SecureRandom.hex(3).to_s+"-###%y-"+SecureRandom.hex(2).to_s
end
