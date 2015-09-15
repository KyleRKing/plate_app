class Comment < ActiveRecord::Base
	belongs_to :plate
	belongs_to :user
end
