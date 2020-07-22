class Game < ApplicationRecord
    has_many :deals, :player_games
    has_many :players, through: :player_games
    
end
