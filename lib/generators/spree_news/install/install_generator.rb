module SpreeNews
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file "vendor/assets/javascripts/spree/frontend/all.js", "//= require frontend/spree_news\n"
        append_file "vendor/assets/javascripts/spree/backend/all.js", "//= require backend/spree_news\n"
      end

      def add_stylesheets
        inject_into_file "vendor/assets/stylesheets/spree/frontend/all.css", " *= require frontend/spree_news\n", :before => /\*\//, :verbose => true
        inject_into_file "vendor/assets/stylesheets/spree/backend/all.css", " *= require backend/spree_news\n", :before => /\*\//, :verbose => true
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_news'
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           run 'bundle exec rake db:migrate'
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end
    end
  end
end
