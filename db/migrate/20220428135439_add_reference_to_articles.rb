class AddReferenceToArticles < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :favorite, null: true, foreign_key: true
  end
end
