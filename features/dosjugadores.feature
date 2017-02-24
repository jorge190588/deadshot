Feature: Probar el juego para dos jugador


Scenario: Portada
	Given voy al juego
	Then debe decir "Deadshot"

Scenario: Modo de dos jugadores, disparar el jugador A, en posicion 1
	Given voy al juego en modo dos jugadores
	When el jugador A dispara al jugador "b" en la posicion 1
	Then debe decir "GANO EL JUGADOR A"



