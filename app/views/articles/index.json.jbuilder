json.array!(@articles) do |article|
  json.extract! article, :title, :summary, :body
  json.url article_url(article, format: :json)
end
