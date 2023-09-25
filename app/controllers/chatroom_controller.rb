class ChatroomController < ApplicationController
    before_action :require_user, only: [:index]
    def index
        @messages = Message.all        
        #@message = Message.new
    end

    # def create
    #     #binding.break
    #     @message = Message.new(body: params[:body], user_id: current_user.id)
    #     if @message.save
    #         # flash[:notice] = "Your message have been send"
    #         redirect_to root_path
    #     else
    #         flash[:danger] = "Something went wrong. Your message is not been sent."
    #         render :index, status: :unprocessable_entity       
    #     end
    # end
    # private

    # def message_params
    #     params.require(:message).permit(:body)
    # end
end