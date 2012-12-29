class AddCustomerIdToTrees < ActiveRecord::Migration
  def change
    change_table :trees do |t|
      t.integer  :customer_id
    end
  end
end

