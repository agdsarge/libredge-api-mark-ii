class Api::V1::GamesController < ApplicationController
    def index
        render json: Game.all
    end

    def special_index
        render json: Game.my_games(params[:id])
    end

    def latest_deal
        render json: Game.find(params[:id]).deals.last
    end


    def create
        new_game = Game.create
        n, e, s, w = params[:north], params[:east], params[:south], params[:west]
        Deal.create(game: new_game, dealer: n)
        PlayerGame.create(player_id: n, game: new_game, position: 'north')
        PlayerGame.create(player_id: s, game: new_game, position: "south")
        PlayerGame.create(player_id: e, game: new_game, position: "east")
        PlayerGame.create(player_id: w, game: new_game, position: 'west')
        render json: new_game.to_json(only: :memorable_string_name)
    end



    private

    def game_params

    end

end
