require_relative "../lib/juego.rb"

describe "disparar" do

	it "disparar con valor 1" do
		juego = Juego.new 
		juego.disparar(1).should == true
	end

	it "disparar con valor 2" do
		juego = Juego.new 
		juego.disparar(2).should == false
	end

	it "disparar con valor 0" do
		juego = Juego.new 
		juego.disparar(2).should == false
	end
end
