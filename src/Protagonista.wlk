import wollok.game.*

object conejo {
	
	var corazones = 3
	var property position = game.at(0,0)
	method municion() = [zanahoria, zanahoria, zanahoria, zanahoria]
	
	method recibeDanio() {
		corazones -= 1
		//corazon1.image() = "corazon_perdido.png"    "como cambio el color
		
		position = game.at(0,0)
	}
	
	method moverseHaciaArriba(){
		self.position(position.up(1))
	}
	
	method moverseHaciaAbajo(){
		self.position(position.down(1))
	}
	
	method moverseHaciaIzquierda(){
		self.position(position.left(1))
	}
	
	method moverseHaciaDerecha(){
		self.position(position.right(1))
	}
	
	
	method image() = "assets/conejo.png"
	
	
}

object zanahoria {
	
	var property position = conejo.position()
	
	method image() = "assets/bala.png"
	
	method dispararHaciaArriba(){
		self.position(position.up(1))
	}
	
	method dispararHaciaAbajo(){
		self.position(position.down(1))
	}
	
	method dispararHaciaIzquierda(){
		self.position(position.left(1))
	}
	
	method dispararHaciaDerecha(){
		self.position(position.right(1))
	}
	
	
}


class Vida {
	
	var property position 
	
	method image() = "assets/corazon.png"
	
}


const corazon3 = new Vida(position = game.at(23,19))
const corazon2 = new Vida(position = game.at(22,19))
const corazon1 = new Vida(position = game.at(21,19))