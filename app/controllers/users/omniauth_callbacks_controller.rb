class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    authenticate_user("facebook")
  end

  def fitbit
    authenticate_user("fitbit")
  end
  
  def github
    authenticate_user("github")
  end

  def authenticate_user(provider)
    @user = User.find_for_oauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect :user, @user #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "#{provider}") if is_navigational_format?
    else
      session[:omniauth] = request.env["omniauth.auth"].except('extra')
      session["devise.#{provider}_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end