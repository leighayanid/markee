Rails.application.routes.draw do

  get 'welcome/index'

  get 'pages/categories'
  get 'browse', :to => 'pages#categories'
  get 'pages/explore'

  resources :links do
    member do
      get :delete
    end
  end

  resources :categories do
    member do
      get :delete
    end
  end

  resources :profiles, only: [:edit]
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  authenticated :user do
    root "pages#index", as: "authenticated_root"
  end
  
  root 'welcome#index'
end
