# frozen_string_literal: true

class Professional::ProfessionalController < ApplicationController
  before_action :check_user_role

  def overview
  end

  def help
  end

  private

  def check_user_role
    return if current_user.user_role&.role == 'professional'

    redirect_to root_path, alert: 'Access denied'
  end
end
