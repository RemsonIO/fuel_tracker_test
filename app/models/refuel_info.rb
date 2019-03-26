class RefuelInfo < ApplicationRecord

  validates :date, presence: true
  validates :vehicle, presence: true
  validates :driver, presence: true
  validates :odometer_reading, presence: true, numericality: { greater_than: 0 }
  validates :refuel_location, presence: true
  validates :liters_of_fuel, presence: true, numericality: { greater_than: 0 }

end
