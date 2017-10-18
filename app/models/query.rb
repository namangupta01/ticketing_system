class Query < ApplicationRecord
	has_many :query_mapper
	has_one :query_solved
end
