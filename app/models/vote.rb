class Vote < ActiveRecord::Base
  attr_accessible :choice
  belongs_to :member
  belongs_to :resolution
end
