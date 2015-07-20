class AddSlotReferencesToVehicles < ActiveRecord::Migration
  def change
    add_reference :vehicles, :slot, index: true, foreign_key: true
  end
end
