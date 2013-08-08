class AddFeaturedHomeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :featured_home, :boolean, default: false
  end
end
