Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'about', to: 'welcome#about'


  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  get 'logout', to: 'devise/sessions#destroy'
  end
 
end
