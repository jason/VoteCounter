class MeetingMember < ActiveRecord::Base
  attr_accessible :meeting_id, :member_id, :presence
end
