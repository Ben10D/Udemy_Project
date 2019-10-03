Rails.application.routes.draw do
  get 'articles/new'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :edit, :create, :new]
  root 'welcome#index'

end
