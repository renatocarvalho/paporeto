class ArticlesController < ApplicationController
  def index
    # @articles = Article.limit(8)
    @category = Category.find(params[:category_id])
    @featured = Article.featured.first
    @articles = Article.published.limit(8)
  end

  def show
    @article = Article.find(params[:id])
    @related = @article.category.articles.where.not(id: @article.id).limit(4)
  end
end
