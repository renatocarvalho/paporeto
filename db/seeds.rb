# encoding: utf-8
# require 'ffaker'

# 100.times do |n|
#   Article.create!(title: "Lorem #{n+1}", category: Category.all.sample, body: "Body #{n+1}")
# end

# 100.times do |n|
#   Article.create!(title: Faker::Lorem.sentence, summary: Faker::Lorem.paragraph, category: Category.all.sample, body: Faker::HipsterIpsum.paragraph)
# end

Category.destroy_all
Category.create!(name: 'Notícias')
Category.create!(name: 'Esportes')
Category.create!(name: 'Entretenimento')

Article.destroy_all

Category.all.each do |category|

  10.times do |n|
    file_path = Rails.root.join('fixtures', category.slug, '*.jpg').to_s

    article = Article.create! do |article|
      article.picture      = Image.create_upload(upload_name: 'picture', file: File.open(Dir[file_path].sample), imageable_type: 'Article')
      article.title        = Faker::Lorem.sentence
      article.summary      = Faker::Lorem.paragraph
      article.published_at = Time.now
      article.body         = Faker::Lorem.paragraphs(10).join("\n\n")
      article.category     = category
    end
  end

  category.articles.first.update!(featured: true)
end

# Article.where(featured: false).first.update(featured_at_home: true)
