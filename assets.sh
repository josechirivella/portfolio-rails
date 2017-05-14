#! /bin/sh
echo Generating the new assets!
rake assets:clean RAILS_ENV='production'
rake assets:precompile RAILS_ENV='production'
echo Done! Restart your web server.