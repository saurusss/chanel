class AddPlacetouseToAssetlists < ActiveRecord::Migration[5.2]
  def change
    add_column :assetlists, :placetouse, :string
    rename_column :assetlists, :description, :cpu
    rename_column :assetlists, :ram, :ramsize
    rename_column :assetlists, :disk, :disksize
    rename_column :assetlists, :gateway, :gwaddr
    rename_column :assetlists, :mac_wire, :macwire
    rename_column :assetlists, :mac_wireless, :macwireless
    rename_column :assetlists, :date_buy, :date_purchase
    
  end
end
