class Vote < ActiveRecord::Base
  attr_accessible :vote_type_id, :member_id, :resolution_id
  belongs_to :member
  belongs_to :resolution
  belongs_to :vote_type

  validates_uniqueness_of :member_id, :scope => :resolution_id

  def vote_name
    self.vote_type.name
  end

end
