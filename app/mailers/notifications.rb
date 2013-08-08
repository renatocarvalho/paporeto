class Notifications < ActionMailer::Base
  default from: "redacao@paporeto.com.br"

  def reader_sent_article(reader_article)
    @reader_article = reader_article

    mail to: "renato@startae.com.br", subject: "Artigo do leitor", from: @reader_article.email
  end
end
