class Post < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 50}
  validates :body, presence: true, length: {maximum: 250}
  validates :user_id, presence: true
  belongs_to :user
  has_many :comments
end
