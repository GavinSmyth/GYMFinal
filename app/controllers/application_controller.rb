class ApplicationController < ActionController::Base
    include Pundit
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
    def user_not_authorized
      flash[:error] = 'You are not authorized to perform this action.'
      redirect_to personal_trainers_path
    end
end
