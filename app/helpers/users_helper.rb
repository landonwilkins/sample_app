module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user
  #def gravatar_for(user)
  #  #gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  #  gravatar_id = Digest::MD5::hexdigest("user@example.com")
  #  gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png"
  #  image_tag(gravatar_url, alt: user.name, class: "gravatar").html_safe
  #end
  #
  #def avatar_url(user)
  #  if user.avatar_url.present?
  #    user.avatar_url
  #  else
  #    default_url = "#{root_url}images/guest.png"
  #    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
  #    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
  #  end
  #end

  def gravatar_for(user, options = { :size => 150 })
    gravatar_image_tag(user.email.downcase, :alt => h(user.name),
                       :class => 'gravatar',
                       :gravatar => options)
  end#

end
