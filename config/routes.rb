Rails.application.routes.draw do
  resources :categories
  resources :users
  devise_for :users,path: '',path_names: { sign_up: 'register', sign_in: 'login', sign_out: 'logout'}
  resources :articles do
    resources :likes, only: [:create, :destroy]
  end
  root to: "articles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
