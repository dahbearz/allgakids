class AddEmailBusinesses < ActiveRecord::Migration
  def up
    add_column :businesses, :email, :string
  end

  def down
  end
end
