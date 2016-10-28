class Admin::AdminController < AuthController
  before_action :user_is_authorized
  layout 'admin'

  def index
    redirect_to admin_pages_path
  end

  def test
    render layout: 'article'
  end

  private

  def user_is_authorized
    return true if global_user.is_admin?

    global_user.is_editor? && %w(admin articles).include?(controller_name)
  end

  def user_is_admin
    global_user.is_admin?
  end

end
