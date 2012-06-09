class Venue < ActiveRecord::Base
  attr_accessible :name, :yellowpage_id
  belongs_to :event
end
