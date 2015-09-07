class Comment < ActiveRecord::Base
	validates :body, presence: true, length: {maximum: 250}
	validates :user_id, presence: true
	validates :post_id, presence: true
	belongs_to :user
	belongs_to :post
end
