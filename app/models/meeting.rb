class Meeting < ActiveRecord::Base
  attr_accessible :meeting_date
  has_many :resolutions
end
