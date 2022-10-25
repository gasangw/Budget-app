class HomeController < ApplicationController
    def splash 
        @app_name = ENV.fetch('APP_NAME', 'Budget-app' )
    end
end