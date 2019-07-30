Rails.application.routes.draw do
  resources :trails
  get "/trails&search=query", to: "trails#index"
  get "/trails&lat=:lat&lon=:lon&maxResults=:max_results", to: "trails#trails_search"

  resources :bikes

  resources :comments

  resources :followings

  resources :likes

  resources :rides


  namespace :api do
    namespace :v1 do
      resources :users, except: [:destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/users', to: 'users#show'
    end
  end
end
