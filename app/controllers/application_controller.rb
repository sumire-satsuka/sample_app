class ApplicationController < ActionController::Base
    def hello
        render html: "ohohohohohhello, world!"
    end
end
