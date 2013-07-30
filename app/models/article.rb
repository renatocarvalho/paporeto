class Article < ActiveRecord::Base
  validates :title, :body, presence: true

  belongs_to :category

  def to_param
    "#{id} #{title}".parameterize
  end

end
