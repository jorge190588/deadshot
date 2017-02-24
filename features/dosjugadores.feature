Feature: Probar el juego para dos jugador


Scenario: Portada
	Given voy al juego
	Then debe decir "Deadshot"

Scenario: Modo de dos jugadores, disparar el jugador A, en posicion 1
	Given voy al juego en modo dos jugadores con opcion de inicio "n"
	Then debe decir "Elija quien inicia el juego"

Scenario: Modo de dos jugadores, iniciar a el juego el jugador A
	Given voy al juego en modo dos jugadores con opcion de inicio "a"
	Then debe decir "Turno para A, Dispárale a B"

Scenario: Modo de dos jugadores, iniciar a el juego el jugador B
	Given voy al juego en modo dos jugadores con opcion de inicio "b"
	Then debe decir "Turno para B, Dispárale a A"


