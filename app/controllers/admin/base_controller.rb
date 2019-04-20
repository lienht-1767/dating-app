class Admin::BaseController < ApplicationController
  before_action :user_signed_in?, :verify_admin!
  layout "admin/index"

  def home; end
end
