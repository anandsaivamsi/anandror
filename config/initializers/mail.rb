ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :port           => '587',
  :address        => 'smtp.sendgrid.net',
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'heroku.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp