Quentin::Application.routes.draw do

  resources :welcome, only: [:index]
  root :to => 'welcome#index'

  resources :admin_videos, only: [:edit, :index, :new, :create, :destroy, :update]
  resources :admin, :only => [:index]
end
