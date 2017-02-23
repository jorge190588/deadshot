require 'sinatra'
require_relative 'lib/juego.rb'


get '/' do
	@@juego = Juego.new
	erb :"juego"    
end

get '/disparar' do
	
  	posicion = params["p"].to_i
	disparo= @@juego.disparar(posicion)
	if (disparo==true)
		@resultado = "GANASTE"
	elsif (disparo==false)
		@resultado="INTENTA DE NUEVO"
	else
		@resultado="GAME OVER"
	end
	erb :"juego"
end
