class Vote < ActiveRecord::Base
  attr_accessible :vote_type_id, :member_id, :resolution_id
  belongs_to :member
  belongs_to :resolution
  belongs_to :vote_types, :foreign_key => "id"

  validates_uniqueness_of :member_id, :scope => :resolution_id

end
