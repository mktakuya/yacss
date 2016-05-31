class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.integer :company_name_code, null: false
      t.integer :car_name_code, null: false
      t.integer :car_type_code, null: false
      t.string :vehcle_model, null: false
      t.string :drive_type, null: false
      t.integer :full_length, null: false
      t.integer :full_width, null: false
      t.integer :full_height, null: false
      t.integer :wheel_base, null: false
      t.integer :min_ground_clearrance, null: false
      t.integer :weight, null: false
      t.integer :capacity, null: false
      t.string :grade, null: false
      t.string :engine_cycle, null: false
      t.string :fuel, null: false
      t.string :cylinders_num, null: false
      t.string :valve_system, null: false
      t.integer :total_displacement, null: false
      t.integer :max_output, null: false
      t.integer :max_torque, null: false
      t.integer :tank_cap, null: false
      t.string :trancemission, null: false
      t.string :tire_standard, null: false
      t.float :fuel_comsumption, null: false
      t.float :min_turning_rad, null: false
      t.integer :price, null: false
      t.string :appearance_photo, null: false
      t.string :driver_seat_photo, null: false

      t.timestamps null: false
    end
  end
end
