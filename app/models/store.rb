class Store < ApplicationRecord
    has_many    :assetlists
    has_many    :itassets
    has_many    :dtypes, through:   :itassets
end
