class CreateItaqntesmts < ActiveRecord::Migration[5.2]
  def change
    create_table :itaqntesmts do |t|
      t.references :store, foreign_key: true
      t.references :dtype, foreign_key: true
      t.integer :qntesmt

      t.timestamps
    end
  end
end
