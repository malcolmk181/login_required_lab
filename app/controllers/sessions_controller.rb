class SessionsController < ApplicationController
    
    def index
        if !session.include?(:name)
            redirect_to '/new'
        end
    end
    
    def new

    end

    def create
        # puts params
        if params["name"].nil? || params["name"] == ""
            redirect_to '/new'
        else
            session[:name] = params["name"]
            redirect_to '/'
        end
    end

    def destroy
        if session[:name]
            session.delete(:name)
            redirect_to '/'
        end
    end

end