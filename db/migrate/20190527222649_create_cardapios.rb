class CreateCardapios < ActiveRecord::Migration[5.1]
  def change
    create_table :cardapios do |t|
      t.string :nome
      t.date :data_inicio
      t.date :data_fim
      t.string :mod_ensino

      t.timestamps
    end
  end
end
