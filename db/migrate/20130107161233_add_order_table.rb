class AddOrderTable < ActiveRecord::Migration
  def change
    change_table :trees do |t|
      t.remove :customer_id
      t.integer :order_id
    end
  end
end
