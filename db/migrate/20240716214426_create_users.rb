class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.boolean :eh_admin

      t.timestamps
    end
  end
end
