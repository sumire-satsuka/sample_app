class ApplicationController < ActionController::Base
    def hello
    include SessionHelper
    end
end
