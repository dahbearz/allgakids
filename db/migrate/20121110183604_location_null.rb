class LocationNull < ActiveRecord::Migration
  def up
    remove_column :businesses, :location_id
  end

  def down
  end
end
