class HomeController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index	
	end

	def role_selector
		if current_user.role == "admin"
			redirect_to '/admin/index'
		elsif current_user.role =="employee"
			redirect_to '/employee/index'
		end
	end

end
