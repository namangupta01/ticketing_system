class GuestController < ApplicationController

	def mark_unresolved
		random_string = params[:id]
		if QueryMapper.where(random_string: random_string).first
			byebug
			query_mapper = QueryMapper.where(random_string: random_string).first
			query = query_mapper.query
			query_solved = query.query_solved
			query_mapper.destroy
			query.query_resolved = false
			query.save
			query_solved.destroy
			render 'query_unresolved'
		else
			render 'oversmart'
		end

	end
end
