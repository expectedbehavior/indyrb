# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mailnag_session',
  :secret      => 'cadf8e73dbc5b804335073727ea212878b652138bb04eb14d1071d5465749d89e8de2fb82f46a76970bec1971ea0fdd15f4628e33c7c82facd89ee425f90f961'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
