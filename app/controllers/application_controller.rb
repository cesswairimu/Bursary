class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def admin
    redirect_to root_url unless current_user.admin?
  end

end
