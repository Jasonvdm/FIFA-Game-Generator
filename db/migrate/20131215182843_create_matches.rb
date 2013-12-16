class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :team_one
      t.string :team_two
      t.boolean :cpu_game
      t.integer :player_one_id
      t.integer :player_two_id
      t.integer :player_one_score
      t.integer :player_two_score
      t.boolean :is_tie
      t.string :winner

      t.timestamps
    end
  end
end
