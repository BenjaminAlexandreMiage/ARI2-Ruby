class Creator < ApplicationRecord
    has_many :ads, dependent: :destroy
end
