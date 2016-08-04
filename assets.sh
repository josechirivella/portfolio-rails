#! /bin/sh
echo This script its going to clean the assets folder and precompile the new assets.
rake assets:clean RAILS_ENV='production'
rake assets:precompile RAILS_ENV='production'
service nginx restart