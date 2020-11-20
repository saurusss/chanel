class AddAdacToItassets < ActiveRecord::Migration[5.2]
  def change
    add_column :itassets, :adac, :string
    add_column :itassets, :postno, :string
    add_column :itassets, :ispcompany, :string
    add_column :itassets, :ispmgmtno, :string
    add_column :itassets, :dimension, :string
    rename_column :itassets, :placetouse, :location
    rename_column :itassets, :manufacture, :manufacturer
    rename_column :itassets, :cpuspeed, :spec
  end
end
