Rails.application.routes.draw do

  root to: 'welcome#index'
  get 'search', to: 'welcome#search'

  devise_for :users, controllers: { registrations: :registrations }, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  namespace :users do
    resources :galleries, except: [:index, :show] do
      resources :images, only: [:create, :destroy]
    end
  end

  resources :users, only: [:show], constraints: { id: /\d+/ } do 
    collection do
      get :change_password
      patch :update_password
    end
  end
  

  get 'admin', to: 'admin/dasboards#index', as: 'admin'
  namespace :admin do
    resources :users
    resources :galleries, only: [:index, :show, :new, :create, :destroy]
  end
  
  resources :galleries, only: [:show] 

end
