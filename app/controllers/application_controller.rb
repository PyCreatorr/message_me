class ApplicationController < ActionController::Base
    #helper_methods will be achieved from the views, not only from the controllers
    helper_method :current_user, :logged_in?
    def current_user
        # Memoization of the current_user. If current_user is defined, give back, don't query db.
        # If not -> query db (find user)
        # logically equivalent to:
        #  @current_user = ( @current_user || User.find(session[:user_id]))
        @current_user ||= User.find(session[:user_id]) if session[:user_id]            
    end

    def logged_in?
        # convert returned data from current_user into boolean:
        !!current_user 
    end

    # check if the user logged in, and if not -> redirect to login page
    def require_user
        if !logged_in?
          flash[:danger] = "You must be logged in to perform this action"
          redirect_to login_path
        end
    end
end
