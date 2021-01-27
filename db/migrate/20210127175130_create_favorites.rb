class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :artist
      t.string :title
      t.string :lyrics, array: true

      t.timestamps
    end
    add_index :favorites, :lyrics, using: 'gin'
  end
end
