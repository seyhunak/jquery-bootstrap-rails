module Jquery
  module Bootstrap
    module Rails
      class Engine < ::Rails::Engine
     
        initializer 'jquery-bootstrap-rails.setup', 
          :after => 'jquery-rails.after.load_config_initializers', 
          :group => :all do |app|
            app.config.assets.paths << File.join(config.root, 'vendor', 'toolkit')
        end

      end
    end
  end
end
