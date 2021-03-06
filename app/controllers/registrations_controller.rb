class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:address, :user_role, :first_name, :last_name, :dob, :zip_code, :city, :telephone, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:address, :first_name, :last_name, :dob, :zip_code, :city, :telephone, :email, :password, :password_confirmation, :current_password)
  end
end