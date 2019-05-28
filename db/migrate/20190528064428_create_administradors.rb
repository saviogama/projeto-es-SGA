class CreateAdministradors < ActiveRecord::Migration[5.1]
  def change
    create_table :administradors do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
