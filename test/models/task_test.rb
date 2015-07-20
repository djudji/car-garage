# == Schema Information
#
# Table name: tasks
#
#  id           :integer          not null, primary key
#  content      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#  state        :string           default("todo")
#  content_html :text
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
