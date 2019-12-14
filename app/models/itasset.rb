class Itasset < ApplicationRecord
  belongs_to :store
  belongs_to :dtype

  validates :store_id, :presence => true
  validates :mgmtno, :presence => true
  validates_numericality_of :store_id

end
