class CreateActus < ActiveRecord::Migration
  def change
    create_table :actus do |t|
      t.string :titre
      t.datetime :publication
      t.text :contenu
    end
  end
end
