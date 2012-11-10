class CreateBusinessTable < ActiveRecord::Migration
  def up
    create_table :businesses do |t|
      t.string :name,           :null => false
      t.string :type_of_care
      t.string :name_of_contact
      t.string :telephone,      :null => false
      t.string :website
      t.string :accreditation
      t.string :financial_assistance
      t.integer :max_age
      t.integer :min_age
      t.integer :location_id,   :null => false
      t.integer :vacancies

    end
  end

  def down
    drop_table :businesses
  end
end
