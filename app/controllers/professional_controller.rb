class ProfessionalController < ApplicationController
  before_action :check_user_role

  def dashboard
  end

  private

  def check_user_role
    unless current_user.user_role&.role == 'professional'
      redirect_to root_path, alert: 'Access denied'
    end
  end
end
