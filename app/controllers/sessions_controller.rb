class SessionsController < ApplicationController
before_action :block_access, except: [:destroy]
  def create  
            @administrador = Administrador.find_by(email: params[:session][:email].downcase)
            if @administrador && @administrador.authenticate(params[:session][:password])
                        sign_in(@administrador)
            redirect_to @administrador
    else
            render 'new'
    end
  end
  def destroy
        sign_out
    	redirect_to root_url
  end
end
