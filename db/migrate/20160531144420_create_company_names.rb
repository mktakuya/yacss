class CreateCompanyNames < ActiveRecord::Migration
  def change
    create_table :company_names do |t|
      t.string :name, null: false
      t.string :alpha_name, null: false

      t.timestamps null: false
    end
  end
end
