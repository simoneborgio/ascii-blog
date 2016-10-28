class Admin::SettingsController < Admin::AdminController

  before_action :set_setting, only: [:edit, :update]

  def edit
    @setting.site_url = request.base_url if @setting.site_url.blank?
  end

  def update
    @setting.update(setting_params)

    if @setting.save
      setSuccessAlert I18n.t(:settings_updated_successfully)
      redirect_to edit_admin_setting_path(global_setting)
    else
      render :edit
    end
  end

  private

  def set_setting
    @setting = Setting.find(params[:id])
  end

  def setting_params
    params.require(:setting).permit!
  end

end
