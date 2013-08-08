class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :articles

  def to_param
    "#{id} #{name}".parameterize
  end

  def slug
    @slug ||= name.parameterize
  end

  def featured_article
    articles.featured.first
  end

  def common_articles
    articles.where(featured: false)
  end

end
