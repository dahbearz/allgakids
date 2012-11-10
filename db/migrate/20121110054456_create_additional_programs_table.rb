class CreateAdditionalProgramsTable < ActiveRecord::Migration
  def up
    create_table :additional_programs do |t|
      t.string :name
      t.integer :business_id
    end
  end

  def down
    drop_table :additional_programs
  end
end
