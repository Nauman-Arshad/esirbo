ActiveAdmin.register ConsultationRequest do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :design_preferences, :specific_requirements, :consultation_time, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:design_preferences, :specific_requirements, :consultation_time, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
