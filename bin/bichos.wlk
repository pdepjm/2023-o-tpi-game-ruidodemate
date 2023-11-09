import wollok.game.*
import Protagonista.*

class Bicho {

	var vida = 2
	
	var property position

	method image() = "bicho.png"
	
	method recibeAtaque() {vida -= 1}

	
}

const bicho1 = new Bicho(position = game.at(20,14))
const bicho2 = new Bicho(position = game.at(14,6))
const bicho3 = new Bicho(position = game.at(9,12))