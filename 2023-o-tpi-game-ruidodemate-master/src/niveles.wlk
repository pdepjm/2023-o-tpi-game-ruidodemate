import Paredes.*
import wollok.game.*


object menu{
	var property position = game.at(0,0)
	method image() = "assets/menu.png"
	
}

object nivel{
	var property position = game.at(0,0)
	method image() = "assets/pasto.png"
}

object win{
	var property position = game.at(2,6)
	method image() = "assets/winner.png"
	method recibeDanio(){}
}

object lose{
	var property position = game.at(2,6)
	method image() = "assets/loser.png"
	method recibeDanio(){}
}