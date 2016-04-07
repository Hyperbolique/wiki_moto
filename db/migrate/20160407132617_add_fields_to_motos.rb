class AddFieldsToMotos < ActiveRecord::Migration
  def change
    add_column :motos, :poids, :interger
    add_column :motos, :cylindree, :interger
  end
end
