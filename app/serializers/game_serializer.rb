class GameSerializer < ActiveModel::Serializer
    attributes :id, :memorable_string_name, :final_score
    has_many :deals
    has_many :player_games
    has_many :players, through: :player_games
end
