# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    user_path(@user.id)
  end

  def after_update_path_for(resource)
    user_path(@user.id)
  end

  protected

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end
end
