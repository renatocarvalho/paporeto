class ReaderArticlesController < ApplicationController

  def show
    @reader_article = ReaderArticle.find(params[:id])
  end

  def new
    @reader_article = ReaderArticle.new
  end

  def create
    @reader_article = ReaderArticle.new(reader_article_params)

      if @reader_article.save
        Notifications.reader_sent_article(@reader_article).deliver

        redirect_to @reader_article, notice: 'Sua sugestão de artigo foi enviada com sucesso. Obrigado!'
      else
        render action: 'new'
      end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reader_article_params
      params.require(:reader_article).permit(:name, :email, :title, :body)
    end
end
