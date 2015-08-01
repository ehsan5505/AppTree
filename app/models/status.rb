class Status < ActiveRecord::Base

	# attr_accessible :user_id,:comment

	belongs_to :user

end
