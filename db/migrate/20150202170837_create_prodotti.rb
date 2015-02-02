class CreateProdotti < ActiveRecord::Migration
  def change
    create_table :prodotti do |t|
      t.string :nome
      t.text :descrizione
      t.float :prezzo

      t.timestamps
    end
  end
end
