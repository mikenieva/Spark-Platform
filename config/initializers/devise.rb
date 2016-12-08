Devise.setup do |config|

  config.mailer_sender = 'Odamy <hola@Odamy>'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.secret_key = 'f53e1df3f5d3252b346b79292c3755519091c6cb85ebce2be618c0835dc95996c7d587378b96f43743f7332453a4b7a59944ecc9955fd80ccc3fa9849e23f4df'
  
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

end
