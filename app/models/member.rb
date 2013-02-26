class Member < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :votes
  has_many :resolutions, :through => :votes

end
