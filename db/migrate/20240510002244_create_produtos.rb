class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :preco
      t.date :data_validade
      t.decimal :quantidade_estoque

      t.timestamps
    end
  end
end
