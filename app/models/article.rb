class Article < ActiveRecord::Base
  validates :title, :body, :category_id, presence: true

  belongs_to :category

  def to_param
    "#{id} #{title}".parameterize
  end

  paginates_per 5

  uploads_one :picture, regular: [600,300], thumb: [90,80], large: [940,380]

end
