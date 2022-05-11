class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.references :article, null: true, foreign_key: true

    
      t.timestamps
    end
  end
end
