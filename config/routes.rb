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

  match "photos/search" => "photos#search_bar", :as => :photo_search
  match "add_like" => "likes#add_like", :as => :add_like
  match "photoinfo/:id" => "photos#photoinfo", :as => :photoinfo

end
