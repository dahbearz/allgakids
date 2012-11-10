class RemoveNullStuff < ActiveRecord::Migration
  def up
    remove_column :locations, :city
    remove_column :locations, :county
    remove_column :locations, :zipp
  end

  def down
  end
end
