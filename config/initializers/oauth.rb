Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_APP_ID'], ENV['GITHUB_APP_SECRET'],
  scope: 'user'

  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'],
  scope: 'email', info_fields: 'id,name,email,link'

  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']

  provider :linkedin, ENV['LINKEDIN_CLIENT_ID'], ENV['LINKEDIN_CLIENT_SECRET'], fields: ['id', 'first-name', 'last-name', 'public-profile-url', 'email-address']

  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_SECRET"], scope: 'email, profile', access_type: 'online', name: 'google'
end
