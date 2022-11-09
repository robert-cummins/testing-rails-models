class EmailMd5Generator
  PROFILE_PHOTO_ROOT_URL = URI 'https://s.gravatar.com/avatar/'
  
  def self.profile_photo_url(email)
    url = PROFILE_PHOTO_ROOT_URL.clone
    hexi_email = Digest::MD5.hexdigest email
    url.path << hexi_email
    url.to_s
  end
end