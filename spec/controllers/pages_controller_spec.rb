require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  context "regardless if someone is logined or not should" do
    context "GET index" do
      it "instantiate new @refuel_info" do
        get :index
        expect(assigns(:refuel_info)).to be_instance_of(RefuelInfo)
      end

      it "render index template" do
        get :index
        expect(response).to render_template("index")
      end
    end

    context "POST refuel" do
      refuel_params = { dated_on: "1441290",
      vehicle: "Gundam Bael",
      driver: "McGillis Fareed",
      refuel_location: "Earth",
      liters_of_fuel: "2122100",
      odometer_reading: "100202" }

      it "should have @refuel_info" do
        post :refuel, params: { refuel_info: refuel_params, format: "js" }
        expect(assigns(:refuel_info)).to be_instance_of(RefuelInfo)
      end

      it "render pages#refuel" do
        post :refuel, params: { refuel_info: refuel_params, format: "js" }
        expect(response).to render_template("refuel")
      end

    end
  end

end
