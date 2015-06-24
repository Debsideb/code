class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.date :delivery_date
      t.date :delivery_time

      t.timestamps null: false
    end
  end
end
