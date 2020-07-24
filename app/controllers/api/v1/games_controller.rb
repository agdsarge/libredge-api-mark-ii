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
        render json: Game.new
    end

    private

    def game_params

    end

end
