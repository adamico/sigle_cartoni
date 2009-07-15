# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sigle_cartoni_session',
  :secret      => '418a7bbc5d8290c98a3c77d147892754ff442d27ab5ca947beda7511b5791e4958359f12dbf3e58a967a281e1fa2969702356df193c238fe9347124a1ec19b34'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
