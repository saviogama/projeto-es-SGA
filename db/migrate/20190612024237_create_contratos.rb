class CreateContratos < ActiveRecord::Migration[5.1]
  def change
    create_table :contratos do |t|
      t.string :n_contrato
      t.string :data
      t.string :n_lic
      t.string :desc
      t.references :fornecedor, foreign_key: true

      t.timestamps
    end
  end
end
