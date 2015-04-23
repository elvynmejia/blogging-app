class Post < ActiveRecord::Base
	#validates_presence_of :title
	#validates_presence_od :body 
	validates :title, :body, presence: true
	has_many :comments, dependent: :destroy

end
