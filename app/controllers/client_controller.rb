class ClientController < ApplicationController
  before_action :check_client_role

  def dashboard
  end

  private

  def check_client_role
    unless current_user.user_role&.role == 'client'
      redirect_to root_path, alert: 'Access denied'
    end
  end
end
