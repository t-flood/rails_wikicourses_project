Rails.application.routes.draw do

  root 'application#home'
  devise_for :users
  resources :topics
  resources :courses do
    resources :articles, only: [:new, :create]
  end
  resources :articles, except: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
