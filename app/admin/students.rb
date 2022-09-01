ActiveAdmin.register Student do
    permit_params :name, :city, :language
    filter :name, as: :select, collection: Student.all.map{|i| i.name}    
    filter :city, as: :select, collection: Student.all.map{|i| i.city}    
    filter :language, as: :select, collection: Student.all.map{|i| i.language}    
end
