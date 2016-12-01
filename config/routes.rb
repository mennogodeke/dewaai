Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#home'
  get 'pages/contact'

  resources :ships
  resources :courses
  resources :entries
end
