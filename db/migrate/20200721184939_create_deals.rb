class CreateDeals < ActiveRecord::Migration[6.0]
  def change
    create_table :deals do |t|
      t.references :game, null: false, foreign_key: true
      t.string :dealer
      t.string :deck_permutation
      t.boolean :bid_phase
      t.string :bid_history
      t.string :contract_content
      t.boolean :contract_ns
      t.string :dummy
      t.string :trick1
      t.string :trick2
      t.string :trick3
      t.string :trick4
      t.string :trick5
      t.string :trick6
      t.string :trick7
      t.string :trick8
      t.string :trick9
      t.string :trick10
      t.string :trick11
      t.string :trick12
      t.string :trick13

      t.timestamps
    end
  end
end
