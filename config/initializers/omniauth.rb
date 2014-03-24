Rails.application.config.middleware.use OmniAuth::Builder do
	provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
	provider :fitbit, ENV['FITBIT_KEY'], ENV['FITBIT_SECRET']
	provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'], {:scope => 'email, offline_access', :client_options => {:ssl => {:ca_file => '/usr/lib/ssl/certs/ca-certificates.crt'}}, :provider_ignores_state => true}
	provider :developer
end