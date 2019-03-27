class PagesController < ApplicationController
  before_action :get_current_user

  def index
    @refuel_info = RefuelInfo.new
  end

  def refuel
    @refuel_info = HandleRefuel.new(params[:refuel_info]).output
  end

  private
  def get_current_user
    current_user
  end

end
