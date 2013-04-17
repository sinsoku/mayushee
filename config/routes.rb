Mayushee::Application.routes.draw do
  root :to => 'projects#index'

  resources :projects do
    resources :duties
  end

  resources :users

  devise_for :users
end
