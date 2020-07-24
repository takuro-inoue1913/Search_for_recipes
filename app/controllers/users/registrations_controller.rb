# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    user_path(@user.id)
  end

  def after_update_path_for(resource)
    user_path(@user.id)
  end
end
