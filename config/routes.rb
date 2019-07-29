Rails.application.routes.draw do
  resources :bikes

  resources :comments

  resources :followings

  resources :likes

  resources :rides


  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :destroy, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/users', to: 'users#show'
    end
  end
end
