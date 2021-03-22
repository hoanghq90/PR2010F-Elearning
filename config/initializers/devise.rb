Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.omniauth :facebook, '234953018279032', '4bc7a8a455cc3ad0d100d0885e30455a'
  # config.omniauth :github, 'f21eb2c29797b76b9530', 'cb0e2e84d1423c0b17b69985cef6fd3b76bb85d9',scope: "user,repo,gist"
  # config.omniauth :google_oauth2, '722673668946-kksjthpktjt1hgog7merr5lkdpqdb03d.apps.googleusercontent.com', 'R_dQiztGjXwrZx_mAmSlLg1c'
end
