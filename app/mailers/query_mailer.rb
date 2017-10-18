class QueryMailer < ApplicationMailer
	default from: 'railsproject283@gmail.com'

	def query_submitted(query)
		@query=query
		mail(to: @query.email,subject: 'Thank You for asking us query. We will contact you soon!')
	end

	def query_resolved(query)
		@query = query
		mail(to: @query.email,subject: 'About Query you have Submitted!')
	end


	def query_unresolved(query)
		@query = query
		mail(to: @query.email,subject: 'About Query you have Submitted')
	end
end
