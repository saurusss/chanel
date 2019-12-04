class Dtype < ApplicationRecord

    has_many   :itassets
    has_many   :stores, through:    :itassets

    validates :dtype, :presence => true
end
