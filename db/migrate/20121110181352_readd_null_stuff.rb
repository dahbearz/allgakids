class ReaddNullStuff < ActiveRecord::Migration
  def up
    add_column :locations, :city, :string
    add_column :locations, :county, :string
    add_column :locations, :zipp, :string
  end

  def down
  end
end
