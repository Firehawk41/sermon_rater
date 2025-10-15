class Admin::BaseController < ApplicationController
  before_action :require_login

  private

  def require_login
    unless current_admin
      redirect_to login_path, alert: "You must log in to access that page."
    end
  end

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  helper_method :current_admin
end
