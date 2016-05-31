class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string :abbrev_name, null: false
      t.string :formal_name, null: false

      t.timestamps null: false
    end
  end
end
