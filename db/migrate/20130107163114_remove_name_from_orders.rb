class RemoveNameFromOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :name
  end

  def down
    add_column :orders, :name, :string
  end
end
