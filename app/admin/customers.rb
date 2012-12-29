ActiveAdmin.register Customer do

  sidebar "Trees", :only => :show do
  	table_for customer.trees do |t|
  		t.column("Id") { |tree| tree.id }
  		t.column("Name") { |tree| link_to(tree.name, admin_tree_path(tree)) }
  	end
	  
	end

  
end
