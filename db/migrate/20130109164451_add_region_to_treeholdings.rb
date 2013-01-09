class AddRegionToTreeholdings < ActiveRecord::Migration
  def change
  	add_column :treeholdings, :region_id, :integer
  end
end
