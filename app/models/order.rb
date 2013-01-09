class Order < ActiveRecord::Base
	attr_accessor :cost_per_tree
  attr_accessible :customer_id, :name, :paid, :sum, :no_of_trees, :cost_per_tree
  
  belongs_to :customer
  has_many :trees

  validates :customer, :presence => true
  validates :no_of_trees, :presence => true
  validates :cost_per_tree, :presence => true

  before_create do |order|

    order.sum = order.no_of_trees.to_i * order.cost_per_tree.to_i
    puts order.sum


    puts "%%%%%%%%%%%%%%%%%%%%%%%%%%"
    Tree.where( 'order_id = NULL' ).limit(order.no_of_trees.to_i).find_each { |tree| 
    	
    	puts tree 
    }
    #TOOD: add trees here as well?
  end
end
