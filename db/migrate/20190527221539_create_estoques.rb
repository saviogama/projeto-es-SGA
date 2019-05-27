class CreateEstoques < ActiveRecord::Migration[5.1]
  def change
    create_table :estoques do |t|
      t.string :nome

      t.timestamps
    end
  end
end
