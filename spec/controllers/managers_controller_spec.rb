require 'rails_helper'
require 'pry-rails'
RSpec.describe ManagersController, type: :controller do

  context "GET show" do
    context "when user logged in and has role manager" do

      login_manager

      before(:each) do
        allow(controller).to receive(:current_user).and_return(controller.current_user)
      end

      it "render show template" do
        get :show
        expect(response).to render_template("show")
      end
    end

    context "when user not logged in or is not a manager" do
      login_employee

      before(:each) do
        allow(controller).to receive(:current_user).and_return(controller.current_user)
      end

      it "should be redirected out" do
        get :show
        expect(response).to redirect_to root_path
      end
    end

  end

  def before_filter
  end

end
