class CreateDtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :dtypes do |t|
      t.string :dtype

      t.timestamps
    end
  end
end
