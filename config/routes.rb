Mayushee::Application.routes.draw do
  root :to => 'projects#index'

  resources :projects do
    resources :duties
  end

  devise_for :users
end
