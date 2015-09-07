class User < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50}, uniqueness: true
	has_many :posts
	has_many :comments
end
