Rails.application.routes.draw do
  devise_for :users
  get 'student/index'
  get 'appointment/index'
  get 'supplier_account/index'
root "book#index"
resources :books 
post "/", to: "book#create_book"
delete '/delete/:id', to: 'book#delete_book'
end 


