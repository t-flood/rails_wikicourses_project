class AuthController < Devise::OmniauthCallbacksController
  def google_oauth2
    auth = request.env['omniauth.auth']
    user = User.from_email!(auth.info.email)

    flash[:notice] = "Signed in with Google."
    sign_in_and_redirect user, event: :authentication
  end
end
