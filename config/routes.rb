Rails.application.routes.draw do
  # 1. Ruta para el Login
  # Si tu controlador se llama 'sessions_controller.rb', pon "sessions#create"
  # Si se llama 'authentication_controller.rb', deja "authentication#login"
  post "/login", to: "authentication#login"

 # 2. Rutas para el CRUD de usuarios (Listar y Crear)
 # Esto habilita:
 # GET /users (para la tabla del dashboard)
 # POST /users (para el botón de guardar)
 resources :users, only: [ :index, :create, :update, :destroy ]
end
