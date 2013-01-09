ActiveAdmin.register Order  do
  form :only => :create do |f|
    f.inputs "Order" do
    	f.input :customer, :as => :select, :include_blank => false, :member_label => :name

      if f.object.new_record?
      	f.input :no_of_trees, :label => "Number of trees"
      	f.input :cost_per_tree, :as => :number
      else
      	f.input :sum
      end
      
      f.input :paid
    end
    f.actions
  end

  sidebar "Trees", :only => :show do
  	table_for order.trees do |t|
  		t.column("Id") { |tree| tree.id }
  		t.column("Name") { |tree| link_to(tree.name, admin_tree_path(tree)) }
  	end
	  
	end

end
