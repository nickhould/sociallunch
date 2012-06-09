class User < ActiveRecord::Base
  attr_accessible :facebook_id

  def connect 
	 @facebook_user = Koala::Facebook::OAuth.new.get_user_info_from_cookies(cookies)
	 
	 user = self.find(@facebook_user[:uid])

	 if !user
	 	self.create(:facebook_id => @facebook_user[:uid])
	 	self.save()
	 end
  end

  def is_connected?
  	if Koala::Facebook::OAuth.new.get_user_info_from_cookies(cookies)
  		true
  	else
    		false
  	end
  end
  
end
