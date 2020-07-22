class PlayerGame < ApplicationRecord
    belongs_to :player
    belongs_to :game

    enum position: [:north, :south, :east, :west]

    validates :player, :position, :game, presence: true
    validate :no_more_than_four_and_unique




    private

    def no_more_than_four_and_unique
        if self.game.player_games.length > 3
            errors.add(:user, "you cannot join a full table")
        elsif self.game.player_games.pluck(:position).include?(self.position) # no more than 1 to a seat
            errors.add(:user, "this seat is already taken.")
        elsif self.game.players.include?(self.player) # you can't be seated at a table twice!
            errors.add(:user, "you're already playing at this table")
        end
    end

end
