require "plugin-demo/generators/controller_generator"

module PluginDemo
  class Plugin < Adhearsion::Plugin
    # Actions to perform when the plugin is loaded
    #
    init :plugin_demo do
      logger.warn "PluginDemo has been loaded"
    end

    # Basic configuration for the plugin
    #
    config :plugindemo do
      greeting "Hello", :desc => "What to use to greet users"
    end

    # Defining a Rake task is easy
    # The following can be invoked with:
    #   rake plugin_demo:info
    #
    tasks do
      namespace :plugin_demo do
        desc "Prints the PluginDemo information"
        task :info do
          STDOUT.puts "PluginDemo plugin is an example."
        end
      end
    end

    # Registering a generator
    generators :"plugin_demo:controller" => PluginDemo::ControllerGenerator

  end
end
