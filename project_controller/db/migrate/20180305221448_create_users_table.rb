class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users_tables do |t|
      t.string :name
      t.string :email, null: false
      t.timestamps
    end


  end
end
