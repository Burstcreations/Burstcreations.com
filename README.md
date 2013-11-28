Burstcreations.com
===================

Simple portfolio/services site for [Burstcreations.com][1].

## Setup for Development

Ubuntu:
```bash
sudo apt-get install ruby1.9.3 sqlite3 libsqlite3-dev
sudo gem install bundler 
bundle install

bundle exec rake db:migrate

# Create first admin user
bundle exec rails console
> Admin.create!(email: 'users@email.here', password: 'your_password')

# Start server
bundle exec rails server
# Open http://0.0.0.0:3000 in browser
```

[1]: http://burstcreations.com
