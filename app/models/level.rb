class Level < ActiveRecord::Base
  has_many :slots, dependent: :destroy
end
