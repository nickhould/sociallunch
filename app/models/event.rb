class Event < ActiveRecord::Base
  attr_accessible :date, :name, :user_id
  belongs_to :user
  has_many :participants
  
end
