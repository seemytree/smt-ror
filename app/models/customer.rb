class Customer < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :trees
end
