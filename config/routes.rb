Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'users/new'
  get 'welcome/index'
  get 'home/index'
  root 'welcome#index' # set welcome the default page
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :articles do
	resources :comments
  end
  resources :password_resets,only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
