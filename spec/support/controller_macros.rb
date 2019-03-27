module ControllerMacros

  def login_manager
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryBot.build(:user)
      user.role = "manager"
      user.save
      sign_in user
      user
    end
  end

  def login_employee
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryBot.build(:user)
      user.role = "employee"
      user.save
      sign_in user
    end
  end

end
