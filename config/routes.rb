Rails.application.routes.draw do
  resources :bikes

  resources :comments

  resources :followings

  resources :likes

  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
