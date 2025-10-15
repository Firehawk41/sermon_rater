class Admin::SessionsController < ApplicationController
  layout "admin"
  def new;  end

  def create
    admin = Admin.find_by(email: params[:email].downcase)
    if admin&.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to admin_root_path, notice: "Welcome back"
    else
      flash.now[:alert] = "Invaild email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:admin_id)
    redirect_to admin_login_path, notice: "Logged out"
  end
end
