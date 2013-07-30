class Article < ActiveRecord::Base
  validates :title, :body, :category_id, presence: true

  belongs_to :category

  def to_param
    "#{id} #{title}".parameterize
  end

  uploads_one :picture, regular: [600,300], thumb: [200,200]

end
