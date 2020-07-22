class DealsController < ApplicationController
    def create
        deal = Deal.new(deal_params)
        game = Game.find(deal_params[:game_id])
        if deal.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                DealSerializer.new(deal)).serializable_hash
            DealsChannel.broadcast_to game, serialized_data
            head :ok
        end
    end

    def update
        
    end

    def deal_params
        params.require(:deal).permit(:dealer, :game_id)
    end

end
