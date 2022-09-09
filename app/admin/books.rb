ActiveAdmin.register Book do
    permit_params :name, :author_id, :published_at
    filter :name, as: :select, collection: Book.all.map{|i| i.name}
end
