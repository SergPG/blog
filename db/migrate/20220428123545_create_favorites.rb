class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.datetime  :added_to
    
      t.timestamps
    end
  end
end
