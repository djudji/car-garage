# == Schema Information
#
# Table name: slots
#
#  id         :integer          not null, primary key
#  occupied   :boolean          default("f")
#  level_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SlotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
