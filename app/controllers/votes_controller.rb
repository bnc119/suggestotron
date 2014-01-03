class VotesController < ApplicationController

	def create
	
		@topic = Topic.find(params[:topic_id])
		vote = @topic.votes.build
		vote.save!

		respond_to do |format|
			format.html { redirect_to(topics_path) }
			format.js
		end
	end

	def destroy
		puts "bence"
		@topic = Topic.find_by_id(params[:id])
		@topic.votes.last.destroy
		
		respond_to do |format|
			format.html { redirect_to(topics_path) }
			format.js
		end
	end

end
