class AddOrderTable < ActiveRecord::Migration
  def change
    change_table :trees do |t|
      t.integer :order_id
    end
  end
end
