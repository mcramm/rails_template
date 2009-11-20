# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_br_fm_session',
  :secret      => '36b4f62107d219405bb06dcde756caa9136119f126d802db1224fb1cafd9240f02b4b1b4390ae704e7b0fc63c8e6b81c5126ff7ee103ad751eb09f46962ea50a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
