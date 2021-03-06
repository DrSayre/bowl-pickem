Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :predictions
  resources :users
  resources :bowl_results
  post 'winner', to: 'bowl_results#winner'
  get 'leaderboard', to: 'leaderboard#show'
  get 'home', to: 'home#index'
  root 'home#index'
  post 'pick', to: 'predictions#pick'
end
