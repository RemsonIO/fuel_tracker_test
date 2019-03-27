class LoginsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_current_user

  private
  def get_current_user
    current_user
  end
end
