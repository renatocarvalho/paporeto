require 'ffaker'

Category.destroy_all
Category.create!(name: 'Notícias')
Category.create!(name: 'Esportes')
Category.create!(name: 'Entretenimento')

Article.destroy_all
# 100.times do |n|
#   Article.create!(title: "Lorem #{n+1}", category: Category.all.sample, body: "Body #{n+1}")
# end

100.times do |n|
  Article.create!(title: Faker::Lorem.sentence, category: Category.all.sample, body: Faker::HipsterIpsum.paragraph)
end
