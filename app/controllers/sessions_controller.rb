class SessionsController < ApplicationController
    def new
        # @session = Session.new
    end
    
    def create
        #@session = Session.find(params[:id])
        return redirect_to(controller: 'sessions',
                action: 'new') if !params[:name] || params[:name].empty?
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
    end

    def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'hello'
    end
end