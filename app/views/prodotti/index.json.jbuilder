json.array!(@prodotti) do |prodotto|
  json.extract! prodotto, :id, :nome, :descrizione, :prezzo
  json.url prodotto_url(prodotto, format: :json)
end
