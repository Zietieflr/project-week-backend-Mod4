class CreateAbilityScores < ActiveRecord::Migration[6.0]
  def change
    create_table :ability_scores do |t|
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :int
      t.integer :wis
      t.integer :cha
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
