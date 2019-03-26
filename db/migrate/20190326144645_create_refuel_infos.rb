class CreateRefuelInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :refuel_infos do |t|
      t.datetime :dated_on
      t.string   :driver
      t.string   :vehicle
      t.integer  :odometer_reading
      t.string   :refuel_location
      t.integer  :liters_of_fuel

      t.timestamps
    end
  end
end
