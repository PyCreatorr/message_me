class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        # binding.break
        @user = User.new(user_params)
        
        if @user.save
            flash[:success] = "User was created!"
            redirect_to root_path
        else
            flash[:danger] = "Something wrong!"
            render :new , status: :unprocessable_entity
        end
    
    end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      #params.fetch(:post, {title: :title, content: :content})
      params.require(:user).permit(:email, :password, :username)
    end

end