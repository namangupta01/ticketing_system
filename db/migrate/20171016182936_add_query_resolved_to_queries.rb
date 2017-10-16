class AddQueryResolvedToQueries < ActiveRecord::Migration[5.1]
  def change
  	add_column :queries, :query_resolved, :boolean, default: false
  end
end
