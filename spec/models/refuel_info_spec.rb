require 'rails_helper'
require 'pry-rails'
RSpec.describe RefuelInfo, type: :model do

  context HandleRefuel do

    it "incomplete error size" do
      refuel_info = HandleRefuel.new({
          dated_on: "",
          vehicle:  "",
          driver: "",
          refuel_location: "",
          liters_of_fuel: "",
          odometer_reading: ""
        }).output

      refuel_info.valid?
      expect(refuel_info.errors.size).to eq 6
    end

    it "should pass" do
      refuel_info = HandleRefuel.new({
        dated_on: "1441290",
        vehicle: "Gundam Bael",
        driver: "McGillis Fareed",
        refuel_location: "Earth",
        liters_of_fuel: "2122100",
        odometer_reading: "100202"
      }).output

      expect(refuel_info.valid?).to eq true
    end

  end

end
