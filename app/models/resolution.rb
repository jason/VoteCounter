class Resolution < ActiveRecord::Base
  attr_accessible :body, :title, :meeting_date_attributes
  belongs_to :meeting
  has_many :votes
  has_many :vote_types, :through => :votes
  has_many :members, :through => :votes, :foreign_key => :member_id
end
