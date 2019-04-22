class StaticPagesController < ApplicationController
  def home
    session[:conversations] ||= []
    return unless user_signed_in?
    @q = InformationUser.info_list(current_user).search(params[:q])
    @information_users = @q.result(distinct: true).page(params[:page]).per Settings.per_page
    @users = User.user_list(current_user)
    @conversations = Conversation.includes(:recipient, :messages)
  end
end
