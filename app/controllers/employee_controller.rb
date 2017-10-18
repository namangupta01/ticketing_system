class EmployeeController < ApplicationController
	before_action :authenticate_user!

	def index
		@all = Query.all.order(created_at: :desc)
		@resolved = Query.where(query_resolved: true).order(created_at: :desc)
		@unresolved = Query.where(query_resolved: false).order(created_at: :desc)
	end

	def query
		query = Query.find(params[:id])
		query.query_resolved = !query.query_resolved
		query.save
		redirect_to '/employee/index'
	end

end
