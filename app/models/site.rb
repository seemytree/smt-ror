class Site < ActiveRecord::Base
  attr_accessible :description, :name, :treeholding_id
  belongs_to :treeholding
  has_many :trees
end
