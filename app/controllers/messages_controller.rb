class MessagesController < ApplicationController
    before_action :require_user

    def new
        # @message = current_user.messages.build(message_params)
    end

    def create
        # binding.break
        # @message = Message.new(body: params[:body], user_id: current_user.id)
        # @message = current_user.messages.build(body: params[:body])
        @message = current_user.messages.build(message_params)

        respond_to do |format|
            if @message.save
                # flash[:notice] = "Your message have been send"
                # redirect_to root_path
                format.html {
                    ActionCable.server.broadcast("chatroom_channel", { full_message: message_render(@message) })
                    # redirect_to root_path, notice: 'Message was successfully created.'
                }

                format.turbo_stream {
                    ActionCable.server.broadcast("chatroom_channel", { full_message: message_render(@message) })
                    # render :create, locals: { message: @message }
                    
                }
                # ActionCable.server.broadcast('chat', message: data['message'])
            else
                flash[:danger] = "Something went wrong. Your message is not been sent."
                redirect_to root_path, status: :unprocessable_entity       
            end
        end
    end

    private
    
    def message_params
        params.permit(:body)
    end
    
    # render partial and pass the object message to be transferred into the _message.html.erb portion
    # def message_render(message)
    #     render(partial: 'message', locals: {message: message})        
    # end
end