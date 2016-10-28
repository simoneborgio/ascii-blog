class AddArticlesReleaseDate < ActiveRecord::Migration
  def change
    add_column :articles, :release_date, :timestamp, null: false, default: Time.now
  end
end
