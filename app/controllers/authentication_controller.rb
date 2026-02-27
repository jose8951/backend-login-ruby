class AuthenticationController < ApplicationController
  # Este método es el que definimos en la ruta 'post /login'
  def login
    # 1. Buscamos al usuario por su email
    user = User.find_by(email: params[:email])

    # 2. Si el usuario existe Y la contraseña es correcta (authenticate)
    if user&.authenticate(params[:password])
      # Enviamos una respuesta de éxito
      render json: {
        message: "¡Login exitoso!",
        user: user.email
      }, status: :ok
    else
      # Si falla, enviamos un error 401 (No autorizado)
      render json: { error: "Email o contraseña incorrectos" }, status: :unauthorized
    end
  end
end
