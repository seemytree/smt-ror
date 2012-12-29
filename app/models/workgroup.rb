class Workgroup < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :sites

end
