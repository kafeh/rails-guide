module UsersHelper
	def avatar_for(user, options = { size: 80})
		size = options[:size]
		if user.avatar?
			image_tag user.avatar.thumb.url, class: "rounded-circle", width: size
		else
			image_tag "default-avatar.jpg", class: "rounded-circle", width: size
		end
	end	
end
