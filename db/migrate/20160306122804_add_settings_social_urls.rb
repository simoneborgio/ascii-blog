class AddSettingsSocialUrls < ActiveRecord::Migration
  def change
    add_column :settings, :site_url, :string
    add_column :settings, :facebook_url, :string
    add_column :settings, :twitter_url, :string
    add_column :settings, :linkedin_url, :string
    add_column :settings, :github_url, :string
  end
end
