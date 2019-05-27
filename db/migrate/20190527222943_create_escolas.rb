class CreateEscolas < ActiveRecord::Migration[5.1]
  def change
    create_table :escolas do |t|
      t.string :nome
      t.string :rota
      t.text :endereco
      t.string :mod_ensino
      t.string :periodo_atend
      t.integer :qtd_alunos

      t.timestamps
    end
  end
end
