class QueryController < ApplicationController
	before_action :authenticate_user!, except: [:new,:create]
	def new
		@query = Query.new
	end

	def create
		@query = Query.new(permit_params)
		@query.save
		QueryMailer.query_submitted(@query).deliver_later
	end


	def show
		@query = Query.find(params[:id])
	end

	private

	def permit_params
		params.require(:query).permit(:name,:phone_number,:email,:query,:title)
	end

end
