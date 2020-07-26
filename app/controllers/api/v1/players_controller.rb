class Api::V1::PlayersController < ApplicationController
    def index
        render json: Player.all.to_json(except: [:password_digest, :created_at, :updated_at])
    end

    def available_players
        me = Player.find(params[:id])
        render json: Player.all.filter{|p| p != me}.to_json(only: [:id, :username])
    end

    def profile # good request for debugging
        render json: {message: "HELLO WORLD"}
    end

    def create
        # puts ("NEW PLAYER")
        # puts(params)
        new_player = Player.new(player_params)
        new_player.password = params[:password_digest]

        new_player.save
        render json: new_player.to_json(except: :password_digest)
    end

    private

    def player_params
        params.require(:player).permit(:username, :email, :country)
    end
end
