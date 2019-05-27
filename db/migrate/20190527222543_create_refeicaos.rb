class CreateRefeicaos < ActiveRecord::Migration[5.1]
  def change
    create_table :refeicaos do |t|
      t.string :nome
      t.decimal :peso_liquido
      t.text :desc

      t.timestamps
    end
  end
end
