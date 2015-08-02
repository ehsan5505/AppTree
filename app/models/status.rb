class Status < ActiveRecord::Base

	# attr_accessible :user_id,:comment

	validates :comment, presence: true, length:{ minimum:  2 }
	validates :user_id, presence: true

	belongs_to :user

end
