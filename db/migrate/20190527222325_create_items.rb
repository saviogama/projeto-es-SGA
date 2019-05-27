class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.date :data_val
      t.string :n_lote
      t.text :desc
      t.integer :unidade
      t.string :gramatura

      t.timestamps
    end
  end
end
