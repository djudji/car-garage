class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.boolean :parked
      t.string :veh_type

      t.timestamps null: false
    end
  end
end
