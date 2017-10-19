class AdminController < ApplicationController
	before_action :authenticate_user!, :is_admin

	def index
		@all = Query.all.order(created_at: :desc)
		@resolved = Query.where(query_resolved: true).order(created_at: :desc)
		@unresolved = Query.where(query_resolved: false).order(created_at: :desc)
		@employees = User.where(role: "employee")
		active_tab
	end

	def show
		
		@employee = User.find(params[:id])
	end


	private
		def is_admin
			if current_user.role != "admin"
				redirect_to "/employee/index"
			end
		end
end
