class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :memorable_string_name
      t.integer :final_score
      t.boolean :completed

      t.timestamps
    end
  end
end
