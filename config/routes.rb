Rails.application.routes.draw do
  resources :patients
  resources :like_doubles
  resources :likes
  resources :comments
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
