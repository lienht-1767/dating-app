class StaticPagesController < ApplicationController
  def home
    if current_user.information_user
      session[:conversations] ||= []
      @q = InformationUser.info_list(current_user.information_user).search(params[:q])
      @information_users = @q.result(distinct: true).page(params[:page]).per Settings.per_page
      @users = User.user_list(current_user)
      @conversations = Conversation.includes(:recipient, :messages)
    else
      flash[:error] = t ".notice"
      redirect_to new_information_user_path
    end
  end
end
