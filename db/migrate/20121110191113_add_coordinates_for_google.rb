class AddCoordinatesForGoogle < ActiveRecord::Migration
  def up
    add_column :locations, :long, :float
    add_column :locations, :lat,  :float
  end

  def down
  end
end
