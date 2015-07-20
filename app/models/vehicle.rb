class Vehicle < ActiveRecord::Base
  #before_create :generate_pattern
  
  protokoll :lic_plate, :pattern => SecureRandom.hex(2).to_s+"-###%y-"+SecureRandom.hex(2).to_s
  #SecureRandom.hex(2).to_s+"-###%y-"+SecureRandom.hex(2).to_s

  # def self.generate_pattern
  #   begin
  #       lic_plate = SecureRandom.hex(2).to_s+"-###%y-"+SecureRandom.hex(2).to_s
  #   end while Vehicle.where(:lic_plate => lic_plate).exists?
  #     self.lic_plate = lic_plate
  # end
end
