class TutoringRequestsController < ApplicationController

  def new
  	@tutoring_request = TutoringRequest.new
  end

  def create
  	  puts tutoring_request_params
	  @tutoring_request = TutoringRequest.new(tutoring_request_params)
	  @tutoring_request.created_by = current_user.id
	  @tutoring_request.created_at = Time.now
	  @tutoring_request.accepted_by = nil
	  @tutoring_request.accepted_at = nil

	  puts @tutoring_request.created_at

	  if @tutoring_request.save!
	    #notify all the tutors that a new request was made

	    redirect_to '/dashboard'
	  else 
	    redirect_to '/' 
	  end 
	end

	private
	def tutoring_request_params
		params.require(:tutoring_request).permit(:created_by, :created_at, :accepted_by, :accepted_at, :description,
			:max_price, :active)
	end

end
