json.array!(@studenti) do |studente|
  json.extract! studente, :id, :nome, :cognome, :anno_di_nascita
  json.url studente_url(studente, format: :json)
end
