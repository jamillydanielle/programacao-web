# app/models/produto.rb
class Produto < ApplicationRecord
  validates :nome, presence: true
  validates :preco, presence: true
  validates :data_validade, presence: true
  validates :quantidade_estoque, presence: true
end
