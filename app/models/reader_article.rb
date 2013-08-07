class ReaderArticle < ActiveRecord::Base
  validates :name, :email, :title, :body, presence: true
end
