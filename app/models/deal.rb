require_relative './deck.rb'
class Deal < ApplicationRecord
    belongs_to :game
    after_create :shuffle

    # def initialize
    #     @deck_permutation = (0..51).to_a.shuffle.join(':')
    #     @bid_phase = true
    # end

    def hand(player_position)
        dk = Deck.all_cards
        p dk[0]
        p "YIKES"
        case player_position
        when "north"
            (0..12).map {|n| dk[self.deck_permutation.split(':')[n*4]] }.sort {|a, b| a[:ord] <=> b[:ord] } #+ [DECK["reverse"]]
        when "south"
            (0..12).map {|n| dk[self.deck_permutation.split(':')[n*4 + 1]] }.sort {|a, b| a[:ord] <=> b[:ord] } #+ [DECK["reverse"]]
        when "east"
            (0..12).map {|n| dk[self.deck_permutation.split(':')[n*4 + 2]]}.sort {|a, b| a[:ord] <=> b[:ord] } #+ [DECK["reverse"]]
        else
            (0..12).map {|n| dk[self.deck_permutation.split(':')[n*4 + 3]] }.sort {|a, b| a[:ord] <=> b[:ord] } #+ [DECK["reverse"]]

        end
    end

        #make this DRY.


    private

    def shuffle
        self.deck_permutation = (0..51).to_a.shuffle.join(':')
        self.bid_phase = true
        self.bid_history = ''
        self.trick1 = ''
        self.trick2 = ''
        self.trick3 = ''
        self.trick4 = ''
        self.trick5 = ''
        self.trick6 = ''
        self.trick7 = ''
        self.trick8 = ''
        self.trick9 = ''
        self.trick10 = ''
        self.trick11 = ''
        self.trick12 = ''
        self.trick13 = ''

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
