class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.integer :balance, default: 0
      t.date :last_cash_out
      t.integer :cash_out_count
    end
  end
end
