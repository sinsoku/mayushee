Mayushee::Application.routes.draw do
  devise_for :users

  root :to => 'projects#index'

  resources :projects do
    resources :duties
  end

  resources :users
end
