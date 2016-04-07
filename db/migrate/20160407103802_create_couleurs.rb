class CreateCouleurs < ActiveRecord::Migration
  def change
    create_table :couleurs do |t|
      t.string :nom

      t.timestamps null: false
    end

    add_index :couleurs, :id
    add_index :couleurs, :nom

    create_join_table :couleurs, :motos do |t|      
    	t.index :moto_id
    	t.index :couleur_id
    end
  end
end
