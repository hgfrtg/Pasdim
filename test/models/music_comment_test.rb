# == Schema Information
#
# Table name: music_comments
#
#  id         :integer          not null, primary key
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  music_id   :integer
#  user_id    :integer
#
# Indexes
#
#  index_music_comments_on_music_id  (music_id)
#  index_music_comments_on_user_id   (user_id)
#

require 'test_helper'

class MusicCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
