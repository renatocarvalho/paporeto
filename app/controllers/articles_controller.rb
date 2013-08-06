class ArticlesController < ApplicationController
  def index
    @articles = Article.limit(8)
    @featured = Article.where(featured: true).first
  end

  def show
  end
end
