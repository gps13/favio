class VotesController < ApplicationController
	def create
		favinio = Favinio.find(params[:favinio_id])
		vote = favinio.votes.build
		vote.save!
		redirect_to(favinios_path)
	end
	def destroy
	    vote = Vote.find(params[:id])
	    vote.destroy
	    redirect_to(favinios_path)
	end
end
