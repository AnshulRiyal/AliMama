class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :Last_name, null: false
      t.decimal :Sub_total, precision: 15, scale: 2

      t.timestamps
    end
  end
end
