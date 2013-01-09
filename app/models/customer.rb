class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :username, :email, :adress1, :adress2, :postal_code, :city, :cellphone
  has_many :orders
  has_many :trees, :through => :orders

  def name
    [first_name, last_name].join(' ')
  end

  def to_s
		"#{ @first_name } #{ @last_name }"
  end
end
