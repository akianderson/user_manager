# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
UserManager::Application.config.secret_key_base = '536f07257bcaf3cf0d1053a830edc06212e116d5b39d8e8ee5f61623f193b365249a630df57c79e499746e823a9d181221c41fdd028fc93520b802c671dc430b'
