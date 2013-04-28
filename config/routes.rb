Mayushee::Application.routes.draw do
  devise_for :users

  root :to => 'projects#index'

  resources :projects, shallow: true do
    resources :duties
    resources :sprints
    resources :stories do
      resources :tasks
    end
  end

  resources :users
end
