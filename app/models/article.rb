class Article < ActiveRecord::Base
  validates :title, :body, :category_id, presence: true

  belongs_to :category

  def to_param
    "#{id} #{title}".parameterize
  end

  paginates_per 5

  uploads_one :picture, thumb: [90,80],
                        small: [260, 196],
                        regular: [580,300],
                        large: [940,380],
                        full: [1280,493]

  default_scope -> { order(published_at: :desc) }

  def self.published
    where('published_at <= ?', Time.now)
  end

  def self.featured
    where(featured: true)
  end

end
