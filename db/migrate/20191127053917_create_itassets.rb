class CreateItassets < ActiveRecord::Migration[5.2]
  def change
    create_table :itassets do |t|
      t.string :mgmtno
      t.references :store, foreign_key: true
      t.string :username
      t.string :placetouse
      t.string :devicetype
      t.string :purpose
      t.string :manufacture
      t.string :modelno
      t.string :serialno
      t.string :cpuspeed
      t.string :ramsize
      t.string :disksize
      t.string :os
      t.string :hostname
      t.string :ipaddr
      t.string :gwaddr
      t.string :macwire
      t.string :macwireless
      t.date :date_purchase
      t.date :date_produce
      t.integer :amtpurchase
      t.text :remarks

      t.timestamps
    end
  end
end
