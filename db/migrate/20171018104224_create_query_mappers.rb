class CreateQueryMappers < ActiveRecord::Migration[5.1]
  def change
    create_table :query_mappers do |t|
    	t.string :random_string
    	t.references :query
		t.timestamps
    end
  end
end
