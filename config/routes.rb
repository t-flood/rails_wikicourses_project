Rails.application.routes.draw do

  root 'application#home'
  devise_for :users
  resources :topics
  resources :courses do
    resources :articles
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
