class AddLevelIdToSlot < ActiveRecord::Migration
  def change
    add_column :slots, :level_id, :integer
  end
end
