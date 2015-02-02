class Prodotto < ActiveRecord::Base
  validates :prezzo, numericality: { greater_than: 0 }
  validates :nome, :descrizione, :prezzo, presence: true
end
