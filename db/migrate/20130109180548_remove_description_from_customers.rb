class RemoveDescriptionFromCustomers < ActiveRecord::Migration
  def up
    remove_column :customers, :description
  end

  def down
    add_column :customers, :description, :string
  end
end
