Burstcreations.com
===================

Simple portfolio/services site for [Burstcreations.com][1].

## Setup 

### Development

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

### Production

Ubuntu:
```
# commit the bundle packages
bundle package

# on server
# might have to do `git clean -fxd` to clean out old stuff first
bundle install --without development
bundle exec rake assets:precompile
bundle exec rails console production
Admin.create!(:email => 'users@email.here', :password => 'your_password')
touch tmp/restart.txt


[1]: http://burstcreations.com
