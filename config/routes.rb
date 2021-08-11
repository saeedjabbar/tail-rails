Rails.application.routes.draw do
  get 'about', to: 'about#index'

  #create password routes
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'

  #signup routes
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  #signin routes
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'


  delete 'logout', to: 'sessions#destroy'
  root to: 'main#index'
end
