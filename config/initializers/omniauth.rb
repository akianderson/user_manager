Rails.application.config.middleware.use OmniAuth::Builder do
	provider :github, '97d9f3a8593936fa3d49', '48a9f7ce3d550a21a9f28e75925f00a8d3253e0d'
	provider :fitbit, '53182d2c6d514ad080dc7cf7c64249c0', 'ae3c74135d274a05adb3cedecd75a9af'
	provider :developer
end