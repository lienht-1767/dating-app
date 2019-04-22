class StaticPagesController < ApplicationController
  def home
    return unless user_signed_in?
    @q = InformationUser.where.not(user_id: current_user.id).search(params[:q])
    @users = @q.result(distinct: true).page(params[:page]).per Settings.per_page
  end
end
