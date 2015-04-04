class Post < ActiveRecord::Base
	validates :title, :body, presence: true
	has_many :comments, dependent: :destroy
	#Validate	presence	of	the	Post’s	title
	#Validate	presence	of	the	Post’s	body

end
