require_relative './deck.rb'
class Deal < ApplicationRecord
    belongs_to :game
    after_initialize :set_init_values

    def hand
        case self.position
        when :north
            return (0..12).map {|n| DECK[n*4] } + [DECK["reverse"]]
        when :south
            return (0..12).map {|n| DECK[n*4 + 1] } + [DECK["reverse"]]
        when :east
            return (0..12).map {|n| DECK[n*4 + 2]} + [DECK["reverse"]]
        else
            return return (0..12).map {|n| DECK[n*4 + 3] } + [DECK["reverse"]]
        end
    end

    private
    def shuffle
        self.deck_permutation = (0..51).to_a.shuffle.join(':')
        self.bid_phase = true
    end
end
