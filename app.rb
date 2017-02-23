require 'sinatra'
require_relative 'lib/juego.rb'

get '/' do
	@@juego = Juego.new 0
	@nPosiciones = 5
	@hideMsg = "hidden"
	erb :"juego"    
end

get '/disparar' do
	
  	posicion = params["p"].to_i
	disparo= @@juego.disparar(posicion)
	
	if (disparo==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i> GANASTE"
		@hideJuego = "hidden"
		@hideMsg = ""
	elsif (disparo==false)
		@resultado="<i class='glyphicon glyphicon-warning-sign'></i> INTENTA DE NUEVO"
		@hideJuego = ""
		@hideMsg = "hidden"
	else
		@resultado="GAME OVER, POSICION DE EXITO #{ @@juego.posicion_exito }"
		@hideJuego = "hidden"
		@hideMsg = ""
	end
	
	erb :"juego"
end
