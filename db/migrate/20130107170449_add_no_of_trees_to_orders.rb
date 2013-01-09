class AddNoOfTreesToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :no_of_trees, :integer
  end
end
