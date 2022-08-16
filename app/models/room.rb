class Room < ApplicationRecord
    has_one_attached :room_image
    
    belongs_to:user
    has_many:reservations

    validates :room_name, presence: true
    validates :room_introduction, presence: true, length: {maximum: 100}
    validates :room_price, presence: true
    validates :room_address, presence: true
    validates :room_image, presence: true

end
