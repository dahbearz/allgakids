class AlterLocationsTable < ActiveRecord::Migration
  def up
    add_column :locations, :state, :string
    add_column :locations, :address, :string
  end

  def down
  end
end
