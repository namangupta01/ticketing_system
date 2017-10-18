class CreateQuerySolveds < ActiveRecord::Migration[5.1]
  def change
    create_table :query_solveds do |t|
    	t.references :user
    	t.references :query
      	t.timestamps
    end
  end
end
