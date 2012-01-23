module PluginDemo
  class Plugin < Adhearsion::Plugin
    # Basic configuration for the plugin
    #
    config :plugindemo do
      greeting "Hello", :desc => "What to use to greet users"
    end
    
    # This method will be available in your CallController implementations
    # Methods can be easily tested as per the included specfile
    # The method includes an example of how to use the configuration values
    # 
    dialplan :greet do |name|
      play "#{Adhearsion.config[:plugindemo].greeting}, #{name}"
    end

    # Methods can be defined for the :rpc, :events, and :console functionality too
    #
    rpc :do_remotely do
      logger.info "RPC method do_remotely called"
    end

    events :do_inside_event do
      logger.info "Method do_inside_event called"
    end

    console :do_something_on_cli do
      STDOUT.puts "Method do_something_on_cli called"
    end

    # The following registers a very simple event handler, to be invoked when Adhearsion shuts down
    #
    Adhearsion::Events.register_callback :shutdown do
      logger.info "PluginDemo shutting down."
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

  end
end
