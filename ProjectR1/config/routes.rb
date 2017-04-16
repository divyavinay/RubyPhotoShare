Rails.application.routes.draw do

  resources :photos do
  member do
    get 'display',controller:'photos',action:'display',to_param:[:photo_id]
  end
end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

