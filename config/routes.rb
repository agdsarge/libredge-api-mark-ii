Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    # get '/lobby/:id', to: 'games#special_index'
    namespace :api do
            namespace :v1 do
                resources :games, only: [:index]
                resources :deals, only: [:create, :update, :show]
                get 'games/available_players/:id', to: 'players#available_players'
                get '/games/latest_deal/:id', to: 'games#latest_deal'
                post '/games/new', to: 'games#create'
                #
                get '/lobby/:id', to: 'games#special_index'
                get '/players', to: 'players#index'
                post '/players', to: 'players#create'
                #
                # get '/lobby', to: 'games#open_games'

                post '/login', to: 'auth#create'
                get '/profile', to: 'players#profile'
                get '/token', to: 'auth#jwt_log_in'
                get 'hand/:deal/:position', to: "deals#request_hand"
            end
        end
end
