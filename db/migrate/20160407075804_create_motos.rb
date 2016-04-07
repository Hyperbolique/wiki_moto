class CreateMotos < ActiveRecord::Migration
  def change
    create_table :motos do |t|
    	t.string :nom
    end
  end
end
