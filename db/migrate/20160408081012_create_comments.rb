class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :auteur
      t.datetime :publication
      t.text :contenu
    end
  end
end
