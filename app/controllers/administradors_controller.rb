class AdministradorsController < ApplicationController
  
  before_action :authorize, except: [:new, :create]

  def new
     @administrador = Administrador.new
  end

  def create
     @administrador = Administrador.new(administrador_params)
     if @administrador.save
       redirect_to @administrador, notice: "Usuário foi criado com sucesso!"
       sign_in(@administrador)
     else 
       render action: :new
     end
  end

  before_action :correct_administrador?, only: [:edit, :update, :destroy]

  def edit
    @administrador = Administrador.find(params[:id]) 
  end
  
  def update
    @administrador = Administrador.find(params[:id]) 
    if @administrador.update_attributes(administrador_params)
      redirect_to administrador_path
    else
      render action: :edit
    end
  end
  
  def destroy
    @administrador = Administrador.find(params[:id]) 
    @administrador.destroy
    sign_out
    redirect_to root_path
  end

  def index
    @administrador = Administrador.all
  end

  def show
    @administrador = Administrador.find(params[:id])
  end

  private
  def administrador_params
    params.require(:administrador).permit(:nome, :email, :password, :password_confirmation)
  end
end
