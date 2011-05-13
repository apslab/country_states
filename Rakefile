# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

Demo::Application.load_tasks


namespace :apslabs do


  desc "hola chicos esto es una prueba"
  task :prueba do
    # aca hare cosas de mantenimiento
    system('ls -l')
    Country.all
  end

end

