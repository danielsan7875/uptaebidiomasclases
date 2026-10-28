require 'sinatra'
require 'sinatra/reloader' if development?

set :server, :puma
set :port, 4567
set :root, File.dirname(__FILE__)
set :views, settings.root + '/vista'
set :public_folder, settings.root + '/assets' # <--- Esto permite leer logo.png, hero-bg.jpg, etc.

# Rutas de la Aplicación
get '/' do
  erb :index
end

get '/novedades' do
  erb :novedades
end

get '/contactos' do
  erb :contactos
end