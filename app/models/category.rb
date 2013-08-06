class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :articles

  def slug
    @slug ||= name.parameterize
  end
end
