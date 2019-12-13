class CreateIsps < ActiveRecord::Migration[5.2]
  def change
    create_table :isps do |t|
      t.references :store, foreign_key: true
      t.string :telcom
      t.string :lineinfo
      t.date :date_open
      t.string :term
      t.string :bandwidth
      t.string :purpose
      t.string :placetoinstall
      t.text :remarks

      t.timestamps
    end
  end
end
