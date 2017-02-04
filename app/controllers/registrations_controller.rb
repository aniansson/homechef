class RegistrationsController < Devise::RegistrationsController
  private

  def account_update_params
    params.required(:user).permit(:first_name,
                                  :last_name,
                                  :address,
                                  :zip_code,
                                  :city,
                                  :phone,
                                  :email,
                                  :password,
                                  :password_confirmation,
                                  :current_password)
  end
end
