require_relative './deck.rb'
class Deal < ApplicationRecord
    belongs_to :game
    after_create :shuffle

    # def initialize
    #     @deck_permutation = (0..51).to_a.shuffle.join(':')
    #     @bid_phase = true
    # end

    # def hand
    #     case self.position
    #     when :north                   NO ON DECK PERMUTATION
    #         return (0..12).map {|n| DECK[n*4] } #+ [DECK["reverse"]]
    #     when :south
    #         return (0..12).map {|n| DECK[n*4 + 1] } #+ [DECK["reverse"]]
    #     when :east
    #         return (0..12).map {|n| DECK[n*4 + 2]} #+ [DECK["reverse"]]
    #     else
    #         return return (0..12).map {|n| DECK[n*4 + 3] } #+ [DECK["reverse"]]
    #     end
    # end




    private

    def shuffle
        self.deck_permutation = (0..51).to_a.shuffle.join(':')
        self.bid_phase = true
        if self.game.deals.empty?
            self.dealer = :north
        else
            case self.game.deals.last.dealer
            when :north
                self.dealer = :east
            when :east
                self.dealer = :south
            when :south
                self.dealer = :west
            else
                self.dealer = :north
            end
        end
        self.save
    end
end

# puts Deck
