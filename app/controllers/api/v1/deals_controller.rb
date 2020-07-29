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
        if deal.bid_phase
            render json: {history: deal.bid_history}
        else
            render json: {end: true, game: deal.game.id, history: deal.bid_history}
        end
    end

    def create

    end

    def update
        deal = Deal.find(params[:id])
        if params[:bid_history]
            deal.bid_history += params[:bid_history]
            deal.save
            render json: {history: deal.bid_history}
        elsif params[:bid_phase] == 'ended'
            hist_str = deal.bid_history
            hist_array = hist_str.split('%')

            bid = hist_array[-4].split('.')
            deal.contract_ns = (bid[0] == 'north' || bid[0] == 'south')
            deal.contract_content = bid[1]
            deal.dummy = hist_array[-2].split('.')[0]
            deal.bid_phase = false
            # byebug
            deal.save
        elsif params[:trick1] # please dear god, and i going to repeat this 13 times like a simpleton???
            deal.trick1 += params[:trick1]
            deal.save
            if deal.trick1.count('%') == 4
                render json: {finished: true, trick: deal.trick1}
            else
                render json: {finished: false, trick: deal.trick1}
            end
        elsif params[:trick2]
            deal.trick2 += params[:trick2]
            deal.save
            if deal.trick3.count('%') == 4
                render json: {finished: true, trick: deal.trick2}
            else
                render json: {finished: false, trick: deal.trick2}
            end
        elsif params[:trick3]
            deal.trick3 += params[:trick3]
            deal.save
            if deal.trick3.count('%') == 4
                render json: {finished: true, trick: deal.trick3}
            else
                render json: {finished: false, trick: deal.trick3}
            end
        elsif params[:trick4]
            deal.trick4 += params[:trick4]
            deal.save
            if deal.trick4.count('%') == 4
                render json: {finished: true, trick: deal.trick4}
            else
                render json: {finished: false, trick: deal.trick4}
            end
        elsif params[:trick5]
            deal.trick5 += params[:trick5]
            deal.save
            if deal.trick5.count('%') == 4
                render json: {finished: true, trick: deal.trick5}
            else
                render json: {finished: false, trick: deal.trick5}
            end
        elsif params[:trick6]
            deal.trick6 += params[:trick6]
            deal.save
            if deal.trick6.count('%') == 4
                render json: {finished: true, trick: deal.trick6}
            else
                render json: {finished: false, trick: deal.trick6}
            end
        elsif params[:trick7]
            deal.trick7 += params[:trick7]
            deal.save
            if deal.trick7.count('%') == 4
                render json: {finished: true, trick: deal.trick7}
            else
                render json: {finished: false, trick: deal.trick7}
            end
        elsif params[:trick8]
            deal.trick8 += params[:trick8]
            deal.save
            if deal.trick8.count('%') == 4
                render json: {finished: true, trick: deal.trick8}
            else
                render json: {finished: false, trick: deal.trick8}
            end
        elsif params[:trick9]
            deal.trick9 += params[:trick9]
            deal.save
            if deal.trick9.count('%') == 4
                render json: {finished: true, trick: deal.trick9}
            else
                render json: {finished: false, trick: deal.trick9}
            end
        elsif params[:trick10]
            deal.trick10 += params[:trick10]
            deal.save
            if deal.trick10.count('%') == 4
                render json: {finished: true, trick: deal.trick10}
            else
                render json: {finished: false, trick: deal.trick10}
            end
        elsif params[:trick11]
            deal.trick11 += params[:trick11]
            deal.save
            if deal.trick11.count('%') == 4
                render json: {finished: true, trick: deal.trick11}
            else
                render json: {finished: false, trick: deal.trick11}
            end
        elsif params[:trick12]
            deal.trick12 += params[:trick12]
            deal.save
            if deal.trick12.count('%') == 4
                render json: {finished: true, trick: deal.trick12}
            else
                render json: {finished: false, trick: deal.trick12}
            end
        elsif params[:trick13]
            deal.trick13 += params[:trick13]
            deal.save
            if deal.trick13.count('%') == 4
                render json: {finished: true, trick: deal.trick13}
            else
                render json: {finished: false, trick: deal.trick13}
            end
        else
            deal.update(deal_params)
            deal.save
        end
    end

    def trick_request

        deal = Deal.find(params[:id])
        index = 'trick' + params[:trick]
        information = deal[index]
        # byebug
        render json: {trickString: information}
    end

    private
    # def determine_contract(deal)
    #
    # end

    def deal_params
        params.require(:deal).permit(:id, :dealer, :game_id, :position, :deal, :bid_history, :bid_phase, :trick1, :trick2, :trick3, :trick4, :trick5, :trick6, :trick7, :trick8, :trick9, :trick10, :trick11, :trick12, :trick13, :trick)
    end

end
