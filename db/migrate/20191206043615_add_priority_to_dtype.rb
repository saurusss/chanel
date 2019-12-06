class AddPriorityToDtype < ActiveRecord::Migration[5.2]
  def change
    add_column :dtypes, :priority, :integer
  end
end
