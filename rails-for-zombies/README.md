# Rails for Zombies

Building Zombie Twitter via Code School

## Errata

- Assumes Rails is already initialized. In order for examples to work, had to do:
  1. In project directory, `$ rails new .`
  2. `$ bin/rails generate controller CreditCards open debit credit close` (Not strictly necessary but this shows how to wire up views and models)
  3. `$ gem install mysql2`
  4. Modify `Gemfile`, remove `gem 'sqlite3'`, add `gem 'mysql2', '~> 0.3.18'` (Targeting earlier version of `mysql2` only necessary for Rails 4.2.x due to a bug)
  5. `bundle install`. Creates Gemfile.lock, which is necessary for gems to be loaded.
  6. Create tables with [`zombie_twitter_tweets.sql`](./zombie_twitter_tweets.sql) and [`zombie_twitter_zombies.sql`](./zombie_twitter_zombies.sql). May be a way to do this in Rails instead of directly in SQL but tutorial doesn’t say.
  7. Edit/replace `app/config/database.yml` to [use `mysql2`](https://gist.github.com/erichurst/961978#file-database-yml-example-mysql2)
  8. Edit `app/config/routes.rb`, add:
     ```ruby
     get '/' => 'layouts#application'
     get '/tweets' => 'tweets#show'
     resources :zombies
     ```
     Last line is necessary to avoid an error where `link_to` doesn’t recognize `zombie_path`.
  9. Add `app/controllers/layouts_controller.rb`, `app/controllers/tweets_controller.rb`. They don’t have to do shit, they just need a method name that corresponds to the view filename so Rails doesn’t throw a tantrum.
