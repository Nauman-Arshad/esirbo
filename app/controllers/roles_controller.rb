class RolesController < ApplicationController
  def new
    @user = current_user
  end

  def create
    @user = current_user
    @user.build_user_role(role: params["role"])

    begin
      @user.user_role.save!
    rescue ActiveRecord::RecordInvalid
      @user.destroy
      redirect_to new_user_registration_path, alert: "There was an error creating your account. Please try again."
      return
    end

    if @user.user_role.role == "client"
      # redirect_to client_dashboard_path
      redirect_to root_path
    elsif @user.user_role.role == "professional"
      # redirect_to professional_dashboard_path
      redirect_to root_path
    end
  end


end