class UpdateFieldsAssetlists < ActiveRecord::Migration[5.2]
  def change
    rename_column :assetlists, :placetouse, :location
    add_column :assetlists, :adac, :string
    add_column :assetlists, :postno, :string
    rename_column :assetlists, :manufacture, :manufacturer
    rename_column :assetlists, :cpu, :spec
    add_column :assetlists, :ispcompany, :string
    add_column :assetlists, :ispmgmtno, :string
    add_column :assetlists, :dimension, :string
  end
end
