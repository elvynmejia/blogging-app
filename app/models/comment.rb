class Comment < ActiveRecord::Base
	#validates_presence_of :post_id 
	#validates_presence_of :body 
	validates :post_id, :body, presence: true
	belongs_to :post
end
