class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.boolean :occupied
      t.integer :level_id

      t.timestamps null: false
    end
  end
end
