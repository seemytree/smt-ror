class Treeholding < ActiveRecord::Base
  attr_accessible :description, :name, :region_id

  has_many :sites
  has_many :peoples

  belongs_to :region

end
