class GamesController < ApplicationController
    def index
        render json: Game.all
    end

    def create
        game = Game.new
        if game.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                GameSerializer.new(game)).serializable_hash
            ActionCable.server.broadcast 'games_channel', serialized_data
            head :ok
        end
    end

    private

    def game_params

    end

end
