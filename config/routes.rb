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

  #create password reset route
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'

  #create edit password routes
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  #create twitter omniauth routes
  get '/auth/twitter/callback', to: 'omniauth_callbacks#twitter'

  delete 'logout', to: 'sessions#destroy'

  resources :twitter_accounts
  resources :tweets
  
  root to: 'main#index'
end
