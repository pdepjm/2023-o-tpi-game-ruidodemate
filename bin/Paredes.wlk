import wollok.game.*

class Paredes {
	
	var property position
	
	method image() = "pared.png"
}

const pared1 = new Paredes(position = game.at(22,19))
const pared2 = new Paredes(position = game.at(21,19))