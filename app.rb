require 'sinatra'
require_relative 'lib/juego.rb'

get '/' do
	@@juego = Juego.new 1
	@nPosiciones = 5
	erb :"juego"    
end

get '/disparar' do
	
  	posicion = params["p"].to_i
	disparo= @@juego.disparar(posicion)
	if (disparo==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i> GANASTE"
	elsif (disparo==false)
		@resultado="<i class='glyphicon glyphicon-warning-sign'></i> INTENTA DE NUEVO"
	else
		@resultado="GAME OVER, POSICION DE EXITO #{ @@juego.posicion_exito }"
	end
	erb :"juego"
end
