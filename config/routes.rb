Rails.application.routes.draw do
  #root 'posts#index'

  	get 'signup', to: 'users#new', as: 'signup'
	get 'login', to: 'sessions#new', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  
  resources :users


  root 'users#index'

  get    'posts/' =>  'posts#index',    as: :posts

  post   'posts/' =>   'posts#create'

  get    'posts/new' =>       'posts#new', as: :new_post

  get    'posts/:id' =>       'posts#show',     as: :post

  get    'posts/:id/edit' =>  'posts#edit', as: :edit_post

  patch  'posts/:id' =>       'posts#update'

  delete 'posts/:id' =>       'posts#destroy', as: :delete


end
