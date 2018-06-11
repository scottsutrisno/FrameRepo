Rails.application.routes.draw do
  resources :languages
  resources :review_ratings
  resources :comments
  resources :reviews
  resources :packages
  get 'highlight', to: 'home#highlight', as: 'highlights'
  root 'home#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", registrations: "registrations" }
  resources :users
  put 'users#new', to: 'users#edit'
  patch 'users#update', to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
