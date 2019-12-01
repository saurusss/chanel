class AddDtypeToItasset < ActiveRecord::Migration[5.2]
  def change
    add_reference :itassets, :dtype, foreign_key: true
  end
end
