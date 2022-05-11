class Favorite < ApplicationRecord
    belongs_to :article
    belongs_to :user

    validates :added_to, presence: true
end
