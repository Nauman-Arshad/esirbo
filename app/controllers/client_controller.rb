# frozen_string_literal: true

class ClientController < ApplicationController
  before_action :check_client_role

  def dashboard
    @user = current_user
  end

  private

  def check_client_role
    return if current_user.user_role&.role == 'client'
    redirect_to root_path, alert: 'Access denied'
  end
end
