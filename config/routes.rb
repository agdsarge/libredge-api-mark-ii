Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :games, only: [:index, :create]
    resources :deals, only: [:create]
    mount ActionCable.server => '/cable'

    namespace :api do
            namespace :v1 do

                # get '/games', to: 'games#index'
                # get '/games/:id', to: 'games#show'
                # post '/games', to: 'games#create'
                #
                # get '/users', to: 'users#index'
                # post '/users', to: 'users#create'
                #
                # get '/lobby', to: 'games#open_games'


                post '/login', to: 'auth#create'
                get '/profile', to: 'users#profile'
                get '/token', to: 'auth#jwt_log_in'
            end
        end
end
