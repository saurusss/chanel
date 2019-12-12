class Dtype < ApplicationRecord

    has_many   :itassets
    has_many   :stores,      through:  :itassets
    has_many   :itaqntesmts
    validates :dtype, presence:  true
end
