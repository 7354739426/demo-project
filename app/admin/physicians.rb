ActiveAdmin.register Physician do
    permit_params :name
    filter :name, as: :select, collection: Physician.all.map{|i| i.name}      
end
