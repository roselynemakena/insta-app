Rails.application.routes.draw do
  resources :images
  devise_for :users, controllers: {registrations: 'registrations'}
  root 'welcome#index'
  get 'about', to: 'welcome#about'
  get 'my_profile', to: 'users#my_profile'


  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  get 'logout', to: 'devise/sessions#destroy'
  get 'signup', to: 'devise/registrations#new'
  end
 namespace :api do
  namespace :v1 do
    resources :users, only: [:index, :create, :show, :update, :destroy]
  end
 end


end
