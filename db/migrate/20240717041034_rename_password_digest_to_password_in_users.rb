class RenamePasswordDigestToPasswordInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :password, :password
  end
end
