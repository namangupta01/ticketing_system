class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
=begin
def active_tab
			if params[:employee]
				@employee = "in active"
			elsif params[:resolved]
				@resolved_active = "in active"
			elsif params[:unresolved]
				@unresolved_active = "in active"
			else
				@all_active = "in active"
			end
		end
=end

	def active_tab
		if params[:controller] == "admin"
			@employee = " in active"
		else
			@all_active = "in active"
		end
		@resolved_active = " "
		@unresolved_active = " "

	end


	def role_selector
		if current_user.role == "admin"
			"/admin/index"
		elsif current_user.role =="employee"
			"/employee/index"
		end
	end



end
