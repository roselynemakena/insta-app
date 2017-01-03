Rails.application.routes.draw do
  resources :images
  devise_for :users, controllers: {registrations: 'registrations'}
  root 'welcome#index'
  get 'about', to: 'welcome#about'


  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  get 'logout', to: 'devise/sessions#destroy'
  get 'signup', to: 'devise/registrations#new'
  end
 
end
