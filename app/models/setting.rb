class Setting < ActiveRecord::Base

  validates :site_name, presence: true
  validates :alert_on_comment, inclusion: [true, false]

end
