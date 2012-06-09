class User < ActiveRecord::Base
  attr_accessible :id, :facebook_id
  has_many :events

  validates_uniqueness_of :facebook_id

end
