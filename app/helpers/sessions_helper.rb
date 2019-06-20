module SessionsHelper
  def sign_in(*)
    session[:administrador_id] = @administrador.id
  end
  def current_administrador
    @current_administrador ||= Administrador.find_by(id: session[:administrador_id])
  end
  def block_access
    if current_administrador.present?
      redirect_to administrador_path(current_administrador)
    end
  end
  def logged_in?
    !current_administrador.nil?
  end
  def sign_out
    session.delete(:administrador_id)
    @current_administrador = nil
  end
end
