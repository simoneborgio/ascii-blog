class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :site_name, null: false, default: 'AsciiBlog'
      t.string :site_subtitle
      t.boolean :alert_on_comment, null: false, default: false

      t.timestamps null: false
    end
  end
end
