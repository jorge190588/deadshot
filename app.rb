require 'sinatra'
require_relative 'lib/juego.rb'

get '/' do

	erb :"juego"
    
end

get '/disparar' do
	
  	posicion = params["p"].to_i
	@juego = Juego.new
	
	@resultado = ""
	if (@juego.disparar(posicion)==true)
		@resultado = "GANASTE"
	else	
		@resultado="PERDISTE"
	end
	erb :"juego"
end
