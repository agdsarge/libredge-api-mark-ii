class Api::V1::DealsController < ApplicationController

    def request_hand
        deal = Deal.find(params[:deal])
        position = params[:position]
        render json: deal.hand(position)

    end

    def show
        render json: Deal.find(params[:id])
    end

    def history
        deal = Deal.find(params[:id])
        render json: {history: deal.bid_history}
    end

    def create

    end

    def update
        deal = Deal.find(params[:id])
        if params[:bid_history]
            deal.bid_history += params[:bid_history]
            deal.save
            render json: {history: deal.bid_history}
        else
            deal.update(deal_params)
        end
    end

    def deal_params
        params.require(:deal).permit(:id, :dealer, :game_id, :position, :deal, :bid_history)
    end

end
