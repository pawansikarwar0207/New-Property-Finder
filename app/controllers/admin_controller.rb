class AdminController < ApplicationController
  before_action :can_access?

  def users
    @users = User.where(admin: false)
  end

  def can_access?
    unless current_user.admin?
      redirect_to root_path, flash: { danger: "You do not have access to view this page!" }
    end
  end

end
