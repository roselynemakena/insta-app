Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'about', to: 'welcome#about'

 
end
