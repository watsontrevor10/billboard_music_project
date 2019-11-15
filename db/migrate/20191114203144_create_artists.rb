class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :home_city
      t.string :home_state
      t.string :artist_type

      t.timestamps
    end
  end
end
