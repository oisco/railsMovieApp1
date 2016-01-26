class Movie < ActiveRecord::Base
	belongs_to :genre,dependent: :destroy

	validates :title, :released_on, presence: true
	
	RATING=[1,2,3,4,5]
	validates :rating, inclusion:{in:RATING, message:"must be between 1 and 5"}
end
