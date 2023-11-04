class SessionsController < ApplicationController
    before_action :not_logged_in?, only: [:new, :create]

    def new
        
        
    end

    def create
        #binding.break
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "Wellcome to Alpha Blog #{user.username}, you have loged in!"
            #redirect_to user_url(user)
            redirect_to root_path
        else
            flash.now[:danger] = "Wrong kredentials"
            render :new , status: :unprocessable_entity
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:success] = 'Logged out!'
        redirect_to login_path
    end

    private

    def not_logged_in?
        if logged_in?
            flash[:danger] = "You are already logged in"
            redirect_to root_path
        end
    end


end