class AddSiteToTree < ActiveRecord::Migration
   def change
    change_table :trees do |t|
      t.integer  :site_id
    end
  end
end
