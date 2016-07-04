class CreateBusinessEvents < ActiveRecord::Migration
  def change
    create_table :business_events do |t|
      t.string :event
      t.float :shares
      t.references :clientinfo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
