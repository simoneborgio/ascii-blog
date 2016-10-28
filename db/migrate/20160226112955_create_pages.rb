class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name, null: false
      t.string :uri, null: false
      t.integer :order, null: false
      t.text :content

      t.timestamps null: false
    end
  end
end
