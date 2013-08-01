class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :registerable, :recoverable
  validates :name, presence: true
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable
end
