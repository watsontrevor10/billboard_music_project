class AddAvatarToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :avatar, :string  
  end
end
