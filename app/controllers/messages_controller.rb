class MessagesController < ApplicationController
  def index
    @message = Message.new
    #Messageを全て取得する.
    @messages = Message.all
  end
  
  def create
    @message = Message.new(message_params)
    if@message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
  else
  @message = Message.all
  flash.now[:slert] = "メッセージを保存しました"
  render 'index'
  end
  
  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  ##ここまで
end

