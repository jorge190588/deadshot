require_relative "../lib/juego.rb"

describe "iniciar juego en modo un jugador con dos intentos" do
	it "numero de intentos 0 de 2" do
		juego = Juego.new 1,2
		juego.contador_intentos.should == 0
	end
end

describe "disparar en modo un jugador con dos intentos" do

	it "disparar con valor 0" do
		juego = Juego.new 1,2
		juego.disparar(2).should == false
	end

	it "disparar con valor 1" do
		juego = Juego.new 1,2
		juego.disparar(1).should == true
	end

	it "disparar con valor 2" do
		juego = Juego.new 1,2
		juego.disparar(2).should == false
	end


	it "disparar mas de 2 veces" do
		juego = Juego.new 1,2
		juego.disparar(2)
		juego.disparar(2)
		juego.disparar(2).should == -1
	end
end


describe "disparar en modo dos jugadores con 5 intentos" do

end
