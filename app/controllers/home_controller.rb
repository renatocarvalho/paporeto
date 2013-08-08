class HomeController < ApplicationController
  def index
    @featured_home = Article.where(featured_home: true).first
  end
end
