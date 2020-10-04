Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'new/create'
  get 'new/destroy'
  get 'users/new'
  post 'users/new'
  get 'articles/new'
  get 'welcome/index'
  post'articles/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # resources :users
  resources :articles do
  	resources :comments
    resources :users
  end
  root 'pages#home'

end
