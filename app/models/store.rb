class Store < ApplicationRecord
    has_many    :assetlists
    has_many    :itassets
end
