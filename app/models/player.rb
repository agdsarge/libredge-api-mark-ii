class Player < ApplicationRecord
    has_secure_password
    has_many :player_games, dependent: :destroy
    has_many :games, through: :player_games
    validates :username, uniqueness: true
end
