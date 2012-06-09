class Participant < ActiveRecord::Base
  attr_accessible :email, :name, :response
  belongs_to :event
end
