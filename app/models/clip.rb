# == Schema Information
#
# Table name: clips
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  music_id   :integer
#  user_id    :integer
#
# Indexes
#
#  index_clips_on_music_id  (music_id)
#  index_clips_on_user_id   (user_id)
#

class Clip < ApplicationRecord
  belongs_to :user
  belongs_to :music
end
