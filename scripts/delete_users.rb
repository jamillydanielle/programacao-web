# scripts/delete_users.rb

# Carregue o ambiente do Rails
require_relative '../config/environment'

# Verifique se está no ambiente de desenvolvimento (ou o ambiente que deseja limpar)
unless Rails.env.development?
  puts "Este script deve ser executado apenas no ambiente de desenvolvimento."
  exit
end

# Exclua todos os usuários
User.delete_all

puts "Todos os usuários foram excluídos com sucesso."
