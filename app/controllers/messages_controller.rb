class MessagesController < ApplicationController
    before_action :require_user

    def create
        # binding.break
        # @message = Message.new(body: params[:body], user_id: current_user.id)
        # @message = current_user.messages.build(body: params[:body])
        @message = current_user.messages.build(message_params)
        if @message.save
            # flash[:notice] = "Your message have been send"
            redirect_to root_path
        else
            flash[:danger] = "Something went wrong. Your message is not been sent."
            redirect_to root_path, status: :unprocessable_entity       
        end
    end

    private

    def message_params
        params.permit(:body)
    end

end