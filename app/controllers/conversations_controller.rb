class ConversationsController < ApplicationController
  before_action :load_conversation, only: %i(show close)

  def create
    @conversation = Conversation.get current_user.id, params[:user_id]

    add_to_conversations unless conversated?
    respond_to do |format|
      format.js
      format.html
    end
  end

  def show
    @conversation = Conversation.find_by recipient_id: params[:id]
    @message = Message.new
  end

  def close
    session[:conversations].delete(@conversation.id)

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    session[:conversations].include?(@conversation.id)
  end

  def load_conversation
    @conversation = Conversation.find_by id: params[:id]
    return if @conversation
    flash[:error] = t(".converation_not_found")
    redirect_to root_path
  end
end
