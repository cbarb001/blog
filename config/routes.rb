Rails.application.routes.draw do
  #root 'posts#index'


  
  resources :users


  root 'posts#index'

  get    'posts/' =>  'posts#index',    as: :posts

  post   'posts/' =>   'posts#create'

  get    'posts/new' =>       'posts#new', as: :new_post

  get    'posts/:id' =>       'posts#show',     as: :post

  get    'posts/:id/edit' =>  'posts#edit', as: :edit_post

  patch  'posts/:id' =>       'posts#update'

  delete 'posts/:id' =>       'posts#destroy', as: :delete

  controller :sessions do
      get 'login' => :new
      post 'login' => :create
      delete 'logout' => :destroy
   end

   get 'sessions/' => 'sessions#index', as: :sessions


end
