require 'rails/generators'

module Plugins
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)  
      desc "This generator installs JQuery Bootstrap to Asset Pipeline"
                                     
      def add_assets
        insert_into_file "app/assets/javascripts/application.js", "//= require jquery/bootstrap\n", :after => "jquery_ujs\n"
	    end
       
      def add_bootstrap
        copy_file "plugins.coffee", "app/assets/javascripts/plugins.js.coffee"
      end
    
    end
  end
end
