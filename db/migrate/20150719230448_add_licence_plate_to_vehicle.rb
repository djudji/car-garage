class AddLicencePlateToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :lic_plate, :string
  end
end
