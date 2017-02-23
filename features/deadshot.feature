Feature: Probar el juego


Scenario: Portada
	Given voy al juego
	Then debe decir "Deadshot"

Scenario: Disparar a posicion 1
	Given voy al juego
	When disparo a "1"
	Then debe resultar "true"
