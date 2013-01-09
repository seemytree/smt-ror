class Tree < ActiveRecord::Base
  attr_accessible :description, :name, :order_id, :site_id
  belongs_to :order
  belongs_to :site
end
