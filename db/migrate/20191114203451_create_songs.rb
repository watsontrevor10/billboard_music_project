class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :genre
      t.float :play_time
      t.text :lyrics
      t.date :date_released
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
