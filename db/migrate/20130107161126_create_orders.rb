class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.boolean :paid
      t.integer :customer_id
      t.decimal :sum

      t.timestamps
    end
  end
end
