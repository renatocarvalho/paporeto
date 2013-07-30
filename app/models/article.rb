class Article < ActiveRecord::Base
  validates :title, :body, presence: true

  def to_param
    "#{id} #{title}".parameterize
  end

end
