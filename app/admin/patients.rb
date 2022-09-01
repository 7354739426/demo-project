ActiveAdmin.register Patient do
    permit_params :name
    filter :name, as: :select, collection: Patient.all.map{|i| i.name}      
end
