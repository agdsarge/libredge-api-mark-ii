require_relative './deck.rb'
class Deal < ApplicationRecord
    belongs_to :game
    after_initialize :set_init_values

    private
    def shuffle
        self.deck_permutation = (0..51).to_a.shuffle.join(':')
        self.bid_phase = true
    end
end
