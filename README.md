Robots with Hearts
==================

## Environment Variables

To keep secrets confidential, we're using environment variables set in Heroku.  You'll see stuff like this in the codebase:

    config.secret_key_base = ENV['SECRET_KEY_BASE']

That means if you just run `rails` or `rspec` you might get something like this, (maybe only after you try to request a page):

    $ rails s
    ...
    DEPRECATION WARNING: You didn't set config.secret_key_base. Read the upgrade documentation to learn more about this new config option.
    ...

So, we're using [Foreman](http://github.com/ddollar/foreman) to take care of the heavy lifting for us.  First, you'll have to put the following in a file called `.env`:

    SECRET_KEY_BASE=fake_secret_key_base

Make sure that `fake_secret_key_base` is in quotes.  (You can use the key generated in the error message above for the fake keys if you'd like, or `rake secret`.)  `.env` is ignored in `.gitignore`, so don't expect it to be under source control.

When you want to run something like `rails` or `rspec`, prepend it with `foreman run bundle exec`.  To make my life easier, I have the following aliases in my `.bashrc` file:

    alias fr="foreman run bundle exec rails"
    alias fs="foreman run bundle exec rspec"
    
Because these are also needed for precompiling assets, I've enabled Heroku's [user-env-compile](http://devcenter.heroku.com/articles/labs-user-env-compile).

For more information on using environment variables on Heroku, check out [Heroku's article on Configuration and Config Vars](http://devcenter.heroku.com/articles/config-vars).
