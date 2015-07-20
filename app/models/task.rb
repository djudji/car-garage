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

class Task < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
  validates :content, presence: true

	
	auto_html_for :content do
  	html_escape
  	image
  	youtube(:width => "100%", :height => 250, :autoplay => false)
  	link :target => "_blank", :rel => "nofollow"
  	simple_format
  end
end
