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
      flash[:notice] = "Welcome to the platform! Your client account has been created successfully."
      redirect_to client_dashboard_path
    elsif @user.user_role.role == "professional"
      flash[:notice] = "Welcome to the platform! Your professional account has been created successfully."
      redirect_to professional_dashboard_path
    end
  end


end