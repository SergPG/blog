class Favorite < ApplicationRecord
    has_many :articles

    validates :added_to, presence: true
end
