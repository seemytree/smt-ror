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

    Tree.where('order_id IS NULL').limit(order.no_of_trees).each do |tree| 
    	order.trees << tree
    end
    #TOOD: add trees here as well?
  end

  before_destroy do |order|

    order.trees.each do |tree|
      tree.order_id = nil
      tree.save
    end
  end
end
