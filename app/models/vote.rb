class Vote < ActiveRecord::Base

	attr_accessible :topic_id
	belongs_to :topic
	belongs_to :user
end
