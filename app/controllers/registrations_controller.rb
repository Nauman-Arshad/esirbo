class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_user_role_path.tap do |path|
      flash.delete(:notice) if path == new_user_role_path
    end
  end
end