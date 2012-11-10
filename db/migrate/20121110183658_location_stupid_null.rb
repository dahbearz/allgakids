class LocationStupidNull < ActiveRecord::Migration
  def up
    add_column :businesses, :location_id, :integer
  end

  def down
  end
end
