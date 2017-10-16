class CreateQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :queries do |t|
    	t.string :name
    	t.string :phone_number
    	t.string :email
    	t.string :query
      	t.timestamps
    end
  end
end
