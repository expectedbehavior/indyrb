require 'compass'
# If you have any compass plugins, require them here.
config_file = File.join(RAILS_ROOT, "config", "compass.config")
if Compass.respond_to?(:add_project_configuration) 
  Compass.add_project_configuration(config_file)
else  
  Compass.configuration.parse(config_file)
end
Compass.configuration.environment = RAILS_ENV.to_sym
Compass.configure_sass_plugin!
