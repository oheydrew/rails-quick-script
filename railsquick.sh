#!/usr/bin/env bash

echo "THIS SCRIPT WILL MODIFY RAILS FILES, and is for use on NEW PROJECTS ONLY."
echo "This will generate a new rails project INTO THE CURRENT DIRECTORY ($PWD)"
read -p "Are you sure? (Y/y +ENTER) : " -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'RAILSQUICK: Rails New ---------------------------------------------------'
    rails new . --skip-gemfile --skip-bundle --skip-test
    echo 'RAILSQUICK: Copying Gemfile ---------------------------------------------'
    cp -rf _railsquick/Gemfile Gemfile
    echo 'RAILSQUICK: Bundle Install ----------------------------------------------'
    bundle install
    echo 'RAILSQUICK: Rails Rspec:Install -----------------------------------------'
    rails generate rspec:install
    echo 'RAILSQUICK: Rails Devise:Install ----------------------------------------'
    rails generate devise:install

    echo 'RAILSQUICK: rspec/requires: cp spec/rails_helper.rb ---------------------'
    cp -rf _railsquick/rails_helper.rb spec/rails_helper.rb
    echo 'RAILSQUICK: factory-bot: mkdir /spec/support ----------------------------'
    mkdir spec/support/
    echo 'RAILSQUICK: factory-bot: cp spec/support/factory_bot.rb -----------------'
    cp -rf _railsquick/factory_bot.rb spec/support/factory_bot.rb
    echo 'RAILSQUICK: bootstrap: app/assets/javascripts/application.js ------------'
    cp -rf _railsquick/application.js app/assets/javascripts/application.js
    echo 'RAILSQUICK: bootstrap: cp app/assets/stylesheets/application.scss -------'
    cp -rf _railsquick/application.scss app/assets/stylesheets/application.scss
    echo 'RAILSQUICK: bootstrap: rm app/assets/stylesheets/application.css --------'
    rm -rf app/assets/stylesheets/application.css
else
    echo 'NOT CONFIRMED: Exiting...'
fi