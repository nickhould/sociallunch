class Yellowpage < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.search(search)
  	@client = YellowApi.new(:apikey => "5b4f27ge5trzkkrqc49txu8y", 
                            :sandbox_enabled => true)
	  if search
	    results = @client.find_business("restaurant", "#{search}")
	  else
	    'Erreur'
	  end
  end
end