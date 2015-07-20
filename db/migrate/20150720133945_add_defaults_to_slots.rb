class AddDefaultsToSlots < ActiveRecord::Migration
  def up
    change_column_default :slots, :occupied, 0
  end

  def down
    change_column_default :slots, :occupied, nil
  end
end
