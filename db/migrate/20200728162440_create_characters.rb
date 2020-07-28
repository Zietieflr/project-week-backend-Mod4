class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :player_name
      t.string :ancestry_and_heritage
      t.string :background
      t.string :character_class
      t.string :size
      t.string :alignment
      t.string :traits
      t.string :deity
      t.integer :level
      t.integer :hero_points
      t.integer :experience_points

      t.timestamps
    end
  end
end
