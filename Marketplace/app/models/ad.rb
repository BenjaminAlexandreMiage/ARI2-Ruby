class Ad < ApplicationRecord
    belongs_to :creator
    has_one_attached :image
    validates :title, :description, :price, presence: true
end
