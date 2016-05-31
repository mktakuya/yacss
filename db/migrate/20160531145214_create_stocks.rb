class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :spec_id, null: false
      t.integer :num, null: false, default: 0

      t.timestamps null: false
    end
  end
end
