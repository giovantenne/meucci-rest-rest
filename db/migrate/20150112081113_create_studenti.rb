class CreateStudenti < ActiveRecord::Migration
  def change
    create_table :studenti do |t|
      t.string :nome
      t.string :cognome
      t.integer :anno_di_nascita

      t.timestamps
    end
  end
end
