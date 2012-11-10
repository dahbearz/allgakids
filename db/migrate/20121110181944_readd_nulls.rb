class ReaddNulls < ActiveRecord::Migration
  def up
    add_column :businesses, :name, :string
    add_column :businesses, :telephone, :string
  end

  def down
  end
end
