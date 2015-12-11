class CreateUser < ActiveRecord::Migration
  def change
    create_table  do |t|
      t.string :username, null: false
      t.string :password_hash, null: false
      t.timestamps null: false
    end
  end
end
