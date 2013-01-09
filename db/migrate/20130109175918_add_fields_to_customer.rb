class AddFieldsToCustomer < ActiveRecord::Migration
  def change
  	change_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :adress1
      t.string :adress2
      t.string :postal_code
      t.string :city
      t.string :cellphone
    end
    remove_column :customers, :name
  end
end
