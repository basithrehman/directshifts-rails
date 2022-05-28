# README

1. Clone the repo
2. run bundle install
3. run bundle exec rake db:create
4. run bundle exec rake db:migrate
5. run rails s(let the app start in localhost:3000, we will run react app in localhost:30001)

Email configuration:
1. Go to .env file
2. Provide a valid email for SMTP_USERNAME
3. Provide a valid password for SMTP_PASSWORD

*make sure the provided email address allows sending emails from thrid party apps by giving necessary access
