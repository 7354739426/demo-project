ActiveAdmin.register Author do
    permit_params :name
    filter :name, as: :select, collection: Author.all.map{|i| i.name}    
end
