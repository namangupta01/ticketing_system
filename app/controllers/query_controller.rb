class QueryController < ApplicationController

	def new
		@query = Query.new
	end

	def create
		query = Query.new(permit_params)
		query.save
	end

	private

	def permit_params
		params.require(:query).permit(:name,:phone_number,:email,:query)
	end

end
