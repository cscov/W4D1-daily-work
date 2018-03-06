class UpdateUserTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :usernames, :users
  end
end
