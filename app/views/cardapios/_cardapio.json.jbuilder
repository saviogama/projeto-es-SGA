json.extract! cardapio, :id, :nome, :data_inicio, :data_fim, :mod_ensino, :created_at, :updated_at
json.url cardapio_url(cardapio, format: :json)
