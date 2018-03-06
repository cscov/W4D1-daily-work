class CreateUsernamesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :usernames do |t|
      t.string :username, null: false
      t.timestamps

    end
  end
end
