Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


    

    get '/lobby/:id', to: 'games#special_index'
    get '/hand/:deal/:position', to: 'deals#request_hand'
    namespace :api do
            namespace :v1 do
                resources :games, only: [:index, :create]
                resources :deals, only: [:create, :update]
                # get '/games', to: 'games#index'
                # get '/games/:id', to: 'games#show'
                # post '/games', to: 'games#create'
                #
                get '/players', to: 'players#index'
                post '/players', to: 'players#create'
                #
                # get '/lobby', to: 'games#open_games'

                post '/login', to: 'auth#create'
                get '/profile', to: 'players#profile'
                get '/token', to: 'auth#jwt_log_in'
            end
        end
end
