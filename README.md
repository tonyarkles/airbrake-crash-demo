# How to reproduce

- Clone this repo

- Set up the simple sqlite3 database: `./bin/rake db:migrate`

- Run the server `./bin/rails s`

- In a browser, open `http://localhost:3000/`, notice that it loads
  fine
  
- Load `http://localhost:3000/boom`. This will generate an exception,
  and if you edit `config/initializers/airbrake.rb` and put a valid
  API key in there, you should get an error report. I tweaked enough
  pieces that it will produce error reports from `localhost` (see
  monkeypatching in that initializer)
  
- Refresh `/boom` 5 or 6 times. The exception will change from `Boom`
  to `ActiveRecord::ConnectionTimeoutError`. Sometimes it takes a few
  more reloads, and sometimes you need to wait a few seconds. I'm not
  sure why exactly this is.
  
- Change the `Gemfile` to use my branch instead. Try the same `/boom`
  process. I haven't been able to reproduce it using that. I'm using
  that branch on my live server right now and the crashes we were
  having have gone away.
  
