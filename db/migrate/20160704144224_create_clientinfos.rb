class CreateClientinfos < ActiveRecord::Migration
  def change
    create_table :clientinfos do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
