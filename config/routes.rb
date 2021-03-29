Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'students/show'
  devise_for :students, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  resources :students, only: [:show]
  resources :courses
  resources :categories
  resources :tests
  root 'static_pages#index'
end
