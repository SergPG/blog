class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.string :added_to
      t.string :datetime

      t.timestamps
    end
  end
end
