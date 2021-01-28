class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.string :lyrics, array: true

      t.timestamps
    end
    add_index :songs, :lyrics, using: 'gin'
  end
end
