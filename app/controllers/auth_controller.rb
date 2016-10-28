class AuthController < ApplicationController
  before_action :check_basic_auth

  private

  def check_basic_auth
    unless is_authenticated?
      user = authenticate_with_http_basic { |u, p|
        logger.debug "Autenticating user #{u}"
        User.authenticate(u, p)
      }

      if user.present?
        logger.info "Access granted for user #{user.username} to controller #{controller_name} and action #{action_name}"
        session[:user_id] = user.id
      else
        logger.info 'Access denied'
        request_http_basic_authentication
      end
    end
  end

end
