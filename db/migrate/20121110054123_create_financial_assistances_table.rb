class CreateFinancialAssistancesTable < ActiveRecord::Migration
  def up
    create_table :financial_assistances do |t|
      t.string :name
      t.integer :business_id
    end
  end

  def down
    drop_table :financial_assistances
  end
end
