class Post < ActiveRecord::Base
	#has many comments 
	#has_many: comments 
	has_many :comments, dependent: :destroy
end
