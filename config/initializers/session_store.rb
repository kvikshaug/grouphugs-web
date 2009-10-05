# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_web_session',
  :secret      => 'f7449b34c36ba53e5ecb9953d3166e01bc9d12d5c4ec2df52bf91fc7026806d768296a71cdac50f837dac58fbbdc0279d7e6f196b4579fc4b5d32b5b8d263565'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
