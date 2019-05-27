class CreateDistribuicaos < ActiveRecord::Migration[5.1]
  def change
    create_table :distribuicaos do |t|
      t.text :obs

      t.timestamps
    end
  end
end
