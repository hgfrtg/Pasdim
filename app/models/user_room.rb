# == Schema Information
#
# Table name: user_rooms
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#  user_id    :integer
#
# Indexes
#
#  index_user_rooms_on_room_id              (room_id)
#  index_user_rooms_on_user_id              (user_id)
#  index_user_rooms_on_user_id_and_room_id  (user_id,room_id) UNIQUE
#

class UserRoom < ApplicationRecord
  belongs_to :user
  belongs_to :room
end
