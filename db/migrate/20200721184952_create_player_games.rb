class CreatePlayerGames < ActiveRecord::Migration[6.0]
  def change
    create_table :player_games do |t|
      t.references :player, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
