class CreateTreeholdings < ActiveRecord::Migration
  def change
    create_table :treeholdings do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
