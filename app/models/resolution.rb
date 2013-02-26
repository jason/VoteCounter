class Resolution < ActiveRecord::Base
  attr_accessible :body, :title
  belongs_to :meeting
  has_many :votes
  has_many :members, :through => :votes
end
