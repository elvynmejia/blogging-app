class Comment < ActiveRecord::Base
	#this model has the foreign key 
	#belongs to some post
	#belongs_to: posts
	belongs_to :post
end
