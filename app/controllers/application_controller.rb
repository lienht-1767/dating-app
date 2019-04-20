class ApplicationController < ActionController::Base
  def verify_admin!
    return if user_signed_in? && current_user.admin
    redirect_to(root_url)
  end
end
