class Customer < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :orders
  has_many :trees, :through => :orders
end
