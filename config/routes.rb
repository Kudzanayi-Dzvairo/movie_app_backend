Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
  resources :movies
  resources :user_movies
  resources :users
  post '/login', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
