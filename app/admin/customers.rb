ActiveAdmin.register Customer do

  sidebar "Trees", :only => :show do
  	table_for customer.trees do |t|
  		t.column("Id") { |tree| tree.id }
  		t.column("Name") { |tree| link_to(tree.name, admin_tree_path(tree)) }
  	end
	  
	end

	sidebar "Orders", :only => :show do
  	table_for customer.orders do |t|
  		t.column("Id") { |order| link_to(order.id, admin_order_path(order)) }
  		t.column("Trees") { |order| order.trees.count }
  		t.column("Paid") { |order| order.paid }
  	end
	  
	end

	action_item :only => :show do
    link_to('Add order', new_admin_order_path)
  end


  
end
