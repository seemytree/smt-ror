class Site < ActiveRecord::Base
  attr_accessible :description, :name, :workgroup_id
  belongs_to :workgroup
  has_many :trees
end
