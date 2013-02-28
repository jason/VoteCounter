class VoteType < ActiveRecord::Base
  attr_accessible :name
  has_many :votes

  def vote_count(resolution)
    self.votes.where(:resolution_id => resolution).count
  end
end
