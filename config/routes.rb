Rails.application.routes.draw do

  get 'center/index'
  get 'center/upload'
  get  'documents/doc'
  resources :videos
  resources :documents
  resources :home 
 
 
  devise_for :users
  
  root :to=>"home#index"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
