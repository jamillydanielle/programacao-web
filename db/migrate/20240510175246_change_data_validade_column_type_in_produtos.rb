class ChangeDataValidadeColumnTypeInProdutos < ActiveRecord::Migration[7.1]
  def change
        change_column :produtos, :data_validade, :date
  end
end
