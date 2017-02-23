require 'sinatra'
require_relative 'lib/juego.rb'

@@juego = Juego.new

get '/' do

	erb :"juego"
    
end

get '/disparar' do
	
  	posicion = params["p"].to_i
	
	
	@resultado = ""
	if (@@juego.disparar(posicion)==true)
		@resultado = "GANASTE"
	else	
		@resultado="PERDISTE"
	end
	erb :"juego"
end
