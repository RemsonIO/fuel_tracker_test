class PagesController < ApplicationController

  def index
    @refuel_info = RefuelInfo.new
  end

  def refuel
    @refuel_info = HandleRefuel.new(params[:refuel_info]).output
  end

end
