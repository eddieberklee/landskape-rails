Landskape::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :logins
  root :to => "logins#index"
  resources :photos
  resources :comments
  resources :likes
  resources :maps
  resources :upload
  resources :user

end
