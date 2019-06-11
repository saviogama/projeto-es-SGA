class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :nome
      t.string :data_val
      t.string :n_lote
      t.string :desc
      t.integer :unidade
      t.references :estoque, foreign_key: true

      t.timestamps
    end
  end
end
