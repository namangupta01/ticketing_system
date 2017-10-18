class AddingQueryTitleToQuery < ActiveRecord::Migration[5.1]
  def change
  	add_column :queries, :title, :string
  end
end
