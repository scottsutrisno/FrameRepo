class ApplicationController < ActionController::Base
  protected
    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || highlights_path
    end
end
