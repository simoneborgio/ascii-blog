class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.integer :role, null: false, default: 100
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
