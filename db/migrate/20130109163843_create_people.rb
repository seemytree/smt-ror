class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|

    	t.string :first_name
    	t.string :last_name
    	t.string :gender
    	t.integer :age

    	t.text :dreams
    	t.text :worries

    	t.integer :treeholding_id

      t.timestamps
    end
  end
end
