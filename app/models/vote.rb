class Vote < ActiveRecord::Base
  attr_accessible :choice
  belongs_to :member
  belongs_to :resolution
  has_many :vote_types
end
