class AddArticlesUriIndex < ActiveRecord::Migration
  def change
    add_index :articles, :uri, unique: true
  end
end
