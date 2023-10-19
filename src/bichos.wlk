import wollok.game.*
import Protagonista.*

class Bicho {

	var vida = 2
	
	var property position

	method image() = "assets/bicho.png"
	
	/*method recibeAtaque() {
		if(position == zanahoria.position){
			vida-=1
		}
		vida -= 1
	}*/
	
	method recibeDanio() {
		vida -=1
	}

	method morir() = if (vida == 0) position = game.at(30,30) else position
}

const bicho1 = new Bicho(position = game.at(20,14))
const bicho2 = new Bicho(position = game.at(14,6))
const bicho3 = new Bicho(position = game.at(9,12))