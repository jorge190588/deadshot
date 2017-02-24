require 'sinatra'
require_relative 'lib/juego.rb'

get '/unjugador' do
	#parametro, 1ro = posicion, 2do = intentos
	@@juego = Juego.new 1,2
	@@nPosiciones = 5
	@hideMsg = "hidden"
	@alerta = "default"
	erb :"juego"    
end

get '/unjugador/disparar' do
	
  	@posicion = params["p"].to_i
	disparo= @@juego.disparar(@posicion)
	
	if (disparo==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i> GANASTE"
		@hideJuego = "hidden"
		@hideMsg = ""
		@alerta = "success"
	elsif (disparo==false)
		@resultado="<i class='glyphicon glyphicon-warning-sign'></i> INTENTA DE NUEVO"
		@hideJuego = ""
		@hideMsg = "hidden"
		@alerta = "warning"
	else
		@resultado="GAME OVER, POSICION DE EXITO #{ @@juego.posicion_exito }"
		@hideJuego = "hidden"
		@hideMsg = ""
		@alerta = "danger"
	end
	
	erb :"juego"
end
