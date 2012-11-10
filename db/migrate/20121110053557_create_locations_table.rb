class CreateLocationsTable < ActiveRecord::Migration
  def up
    create_table :locations do |t|
      t.string :address,  :null => false
      t.string :state,    :null => false
      t.string :city,     :null => false
      t.string :county,   :null => false
      t.string :zipp,     :null => false
    end
  end

  def down
    drop_table :locations
  end
end
