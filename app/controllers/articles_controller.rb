class ArticlesController < ApplicationController
  def index
    # @articles = Article.limit(8)
    @featured = Article.featured
    @articles = Article.published.limit(8)
  end

  def show
  end
end
