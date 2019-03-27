class ManagersController < LoginsController
  before_action :authenticate_manager

  def show
    @refuel_infos = RefuelInfo.all
  end

  private
  def authenticate_manager
    return if @current_user && @current_user.role == 'manager'
    sign_out(@current_user)
    redirect_to '/'
  end


end
