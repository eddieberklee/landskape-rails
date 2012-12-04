Landskape::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :logins
  root :to => "logins#index"
  resources :users
  resources :photos
  resources :comments
  resources :likes
  resources :maps
  resources :upload
  resources :user

  resources :my_records
end
