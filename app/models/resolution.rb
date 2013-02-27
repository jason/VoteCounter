class Resolution < ActiveRecord::Base
  attr_accessible :body, :title, :meeting_date_attributes
  belongs_to :meeting
  accepts_nested_attributes_for :meeting
  has_many :votes
  has_many :members, :through => :votes
end
