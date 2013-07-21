class AthletesController < ApplicationController

	def show
		respond_to do |format|
			format.html 
		end
	end

	def new	
		@athlete = Athlete.new
	end

	# Create a new user account and send a verification email.
	def create
		@athlete = Athlete.new(params[:athlete])

		@athlete.save
	end


end
