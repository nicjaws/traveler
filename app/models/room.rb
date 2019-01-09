class Room < ApplicationRecord
  belongs_to :user

  validate: :hotel_type, presence: true
  validate: :room_type, presence: true
  validate: :bed_room, presence: true
  validate: :bed_number, presence: true
  validate: :bath_room, presence: true

end

