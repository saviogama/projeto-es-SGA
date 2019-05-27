json.extract! refeicao, :id, :nome, :peso_liquido, :desc, :created_at, :updated_at
json.url refeicao_url(refeicao, format: :json)
