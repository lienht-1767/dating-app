class InformationUsersController < ApplicationController
  before_action :load_info, only: %i(edit update show)
  before_action :load_user, only: %i(show)
  before_action :load_conversation, only: %i(show edit new)

  def show; end

  def new
    @info = InformationUser.new
  end

  def create
    @info = InformationUser.new info_params
    if @info.save
      flash[:success] = t(".success")
      redirect_to root_url
    else
      flash[:fail] = t(".fail")
      render :new
    end
  end

  def edit; end

  def update
    if @info.update info_params
      flash[:success] = t(".success")
      redirect_to root_url
    else
      flash[:fail] = t(".fail")
      render :edit
    end
  end

  private

  def info_params
    params.require(:information_user).permit InformationUser::INFORMATION_PARAMS
  end

  def load_info
    @info = InformationUser.find_by id: params[:id]
    session[:user_id] = params[:id]
    return if @info
    flash[:error] = t(".not_found")
    redirect_to root_path
  end

  def load_user
    @user = User.find_by(id: @info.user_id)
    return if @user
    flash[:error] = t(".not_found")
  end

  def load_conversation
    @conversations = Conversation.get_conversation(current_user)
    return if @conversations
    flash[:error] = t(".not_found")
    redirect_to root_path
  end
end
