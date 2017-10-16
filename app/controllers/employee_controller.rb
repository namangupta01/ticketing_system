class EmployeeController < ApplicationController
	before_action :authenticate_user!

	def index
		@all = Query.all
		@resolved = Query.where(query_resolved: true)
		@unresolved = Query.where(query_resolved: false)
	end


end
