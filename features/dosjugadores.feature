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

Scenario: Modo de dos jugadores, el jugador A inicia y dispara en posicion 1
	Given voy al juego en modo dos jugadores con opcion de inicio "a"
	When disparar a "b" a la posicion "1"
	Then debe decir "GANO EL JUGADOR A"

Scenario: Modo de dos jugadores, el jugador B inicia y dispara en posicion 1
	Given voy al juego en modo dos jugadores con opcion de inicio "b"
	When disparar a "a" a la posicion "1"
	Then debe decir "GANO EL JUGADOR B"

Scenario: Modo de dos jugadores, el jugador A inicia y dispara en posicion 2
	Given voy al juego en modo dos jugadores con opcion de inicio "a"
	When disparar a "b" a la posicion "2"
	Then debe decir "OH OH FALLASTE!!!, ES TURNO DE B"

Scenario: Modo de dos jugadores, el jugador B inicia y dispara en posicion 2
	Given voy al juego en modo dos jugadores con opcion de inicio "b"
	When disparar a "a" a la posicion "2"
	Then debe decir "OH OH FALLASTE!!!, ES TURNO DE A"
