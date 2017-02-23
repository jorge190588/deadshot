require 'sinatra'
require_relative 'lib/juego.rb'

get '/' do

	@nPosiciones = 5


	erb :"juego"
    
end

get '/disparar' do
	
  	posicion = params["p"].to_i
	@juego = Juego.new
	
	@resultado = ""
	if (@juego.disparar(posicion)==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i> GANASTE"
	else	
		@resultado="<i class='glyphicon glyphicon-warning-sign'></i> PERDISTE"
	end
	erb :"juego"
end
