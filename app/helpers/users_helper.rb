module UsersHelper
	def gravatar_for(participant)
	    gravatar_id = Digest::MD5::hexdigest(participant.email.downcase)
	    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
	    image_tag(gravatar_url, alt: participant.name, class: "gravatar")
	  end
end
