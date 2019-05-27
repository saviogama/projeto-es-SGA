class CreateContratos < ActiveRecord::Migration[5.1]
  def change
    create_table :contratos do |t|
      t.date :data
      t.string :n_contrato
      t.string :n_proc_lic
      t.text :desc

      t.timestamps
    end
  end
end
