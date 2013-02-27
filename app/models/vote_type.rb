class VoteType < ActiveRecord::Base
  attr_accessible :name
  belongs_to :vote
end
