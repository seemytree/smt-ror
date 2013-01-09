class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.text :description

      t.integer :treeholding_id

      t.timestamps
    end
  end
end
