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

	it "inicio del juego de jugador A" do
		juego_a = Juego.new 1,5
		juego_a.contador_intentos.should == 0
	end

	it "inicio del juego de jugador B" do
		juego_b = Juego.new 1,5
		juego_b.contador_intentos.should == 0
	end

	
	it "jugador A dispara a jugador B en posicion 1, gana jugador A" do
		juego_a = Juego.new 1,5
		juego_b = Juego.new 1,5
		juego_b.disparar(1).should == true
	end

	it "jugador B dispara a jugador A en posicion 1, gana jugador B" do
		juego_a = Juego.new 1,5
		juego_b = Juego.new 1,5
		juego_a.disparar(1).should == true
	end

	it "jugador A dispara a jugador B en posicion 2, fallo jugador A con 1 intento" do
		juego_a = Juego.new 1,5
		juego_b = Juego.new 1,5
		juego_b.disparar(2).should == false
	end

	it "jugador A dispara en posicion 2, jugador B dispara en posicion 2, primera ronda, fallaron ambos" do
		juego_a = Juego.new 1,5
		juego_b = Juego.new 1,5
		juego_b.disparar(2)
		juego_a.disparar(2).should == false
	end

end
