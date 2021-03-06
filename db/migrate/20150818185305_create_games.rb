class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string :game_id
      t.string :game_name
      t.string :platforms
      t.string :img_url_small
      t.string :img_url_large
      t.string :deck
      t.string :developers
      t.string :genre

      t.timestamps null: false
    end
  end
end
