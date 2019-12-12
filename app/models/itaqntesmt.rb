class Itaqntesmt < ApplicationRecord
  belongs_to :store
  belongs_to :dtype

  validates :qntesmt, numericality: { greater_than_or_equal_to: 1 }
                                    # only_integer: true
                                    # :greater_than 
                                    # :greater_than_or_equal_to
                                    # :equal_to
                                    # :less_than
                                    # :less_than_or_equal_to 
                                    # :other_than
                                    # :odd 
                                    # :even 

end
