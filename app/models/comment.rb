class Comment < ActiveRecord::Base
	validates :post_id, :body, presence: true
	belongs_to :post
end
