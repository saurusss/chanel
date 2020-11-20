class AddStatusToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :status, :string
  end
end
