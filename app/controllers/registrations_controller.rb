class RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token
  protected

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || edit_user_registration_path
  end
end