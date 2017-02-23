Feature: Probar el juego


Scenario: Portada
	Given voy al juego
	Then debe decir "Deadshot"

Scenario: Disparar a posicion 1
	Given voy al juego
	When disparo a "1"
	Then debe resultar "GANASTE"

Scenario: Disparar a posicion 2
	Given voy al juego
	When disparo a "2"
	Then debe resultar "INTENTA DE NUEVO"

Scenario: Disparar a posicion 2 una vez y posicion 1 una vez
	Given voy al juego
	When disparo a "2"
	And disparo a "1"
	Then debe resultar "GANASTE"

Scenario: Disparar a posicion 2 dos veces
	Given voy al juego
	When disparo a "2"
	And disparo a "2"
	Then debe resultar "GAME OVER, POSICION DE EXITO 1"
