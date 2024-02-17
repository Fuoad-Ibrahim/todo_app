# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_task_path
  end

end
