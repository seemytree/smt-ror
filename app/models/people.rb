class People < ActiveRecord::Base
	attr_accessible :treeholding_id, :first_name, :last_name, :gender, :age, :dreams, :worries
  belongs_to :treeholding
end
