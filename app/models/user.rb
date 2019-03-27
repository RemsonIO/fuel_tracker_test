class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_validation :check_valid_roles

  def is_manager?
    role == 'manager'
  end

  private
  def check_valid_roles
    errors[:role] << "Invalid Role" unless ['manager','employee'].include?(role)
  end

end
