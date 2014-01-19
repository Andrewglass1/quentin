Quentin::Application.routes.draw do

  resources :welcome
  root :to => 'welcome#index'

  resources :videos
  resources :admin, :only => [:index]
end
