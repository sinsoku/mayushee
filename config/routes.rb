Mayushee::Application.routes.draw do
  devise_for :users

  root :to => 'projects#index'

  resources :projects do
    resources :duties
    resources :sprints
    resources :stories
  end

  resources :users
end
