class RemoveNullBusiness < ActiveRecord::Migration
  def up
    remove_column :businesses, :name
    remove_column :businesses, :telephone
  end

  def down
  end
end
