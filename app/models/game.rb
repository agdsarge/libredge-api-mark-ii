require_relative "./word.rb"

class Game < ApplicationRecord
    has_many :deals, dependent: :destroy
    has_many :player_games, dependent: :destroy
    has_many :players, through: :player_games

    after_create :set_init_values

    def self.open_games
        self.where(completed: false).filter{|g| g.players.count < 4 }
    end

    def self.my_games(player_id)
        pl = Player.find(player_id)
        self.where(completed: false).filter{|g| g.players.include?(pl)}
        # available = mine + self.open_games
        # available.uniq
        # #change with improvements
    end



    private

    def set_init_values
        until self.memorable_string_name
            candidate_str = Word.generate
            unless Game.find_by(memorable_string_name: candidate_str)
                self.memorable_string_name = candidate_str
            end
        end

        self.final_score = 0 unless self.final_score
        self.completed = false unless self.completed
        self.save
        # unless self.deals.length > 0
        #     Deal.new(game: self)
        # end
    end

end
