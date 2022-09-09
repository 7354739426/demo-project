ActiveAdmin.register Supplier do
    permit_params :name
    filter :name, as: :select, collection: Supplier.all.map{|i| i.name}  
end
