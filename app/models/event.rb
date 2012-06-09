class Event < ActiveRecord::Base
  attr_accessible :date, :name, :user_id
  belongs_to :user
  has_many :participants
  

  def self.find_venue(type, location)
  	@client.find_business(type, location)
  end
end
