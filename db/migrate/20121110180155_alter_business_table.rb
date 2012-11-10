class AlterBusinessTable < ActiveRecord::Migration
  def up
    remove_column :locations, :state
    remove_column :locations, :address
  end

  def down
  end
end
