Rails.application.routes.draw do
  # Esta línea le dice a Ruby:
  # "Si recibes una petición POST en /login, llévala al controlador de autenticación"
  post "/login", to: "authentication#login"

  # Esto crea las rutas estándar para usuarios (crear, ver, etc.)
  resources :users
end
