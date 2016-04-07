class CreateCouleurs < ActiveRecord::Migration
  def change
    create_table :couleurs do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
