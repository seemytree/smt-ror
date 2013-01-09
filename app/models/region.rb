class Region < ActiveRecord::Base
  attr_accessible :name
  has_one :treeholding
end
