class Tree < ActiveRecord::Base
  attr_accessible :description, :name, :customer_id, :site_id
  belongs_to :customer
  belongs_to :site
end
