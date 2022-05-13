Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :users

  root "articles#index"

  resources :articles do
    resources :comments
  end

  resources :favorites

end
