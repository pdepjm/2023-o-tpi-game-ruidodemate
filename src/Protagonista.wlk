import wollok.game.*

object conejo {
	
	var corazones = [corazon1, corazon2, corazon3]
	var property position = game.at(2,2)
	var property anterior = position
	//method municion() = [zanahoria, zanahoria, zanahoria, zanahoria]
	method position()= position
	
	method recibeDanio() {
		var corazon = corazones.head() 
		corazon = "corazon_perdido.png"
		//corazon1.image() = "corazon_perdido.png"    "como cambio el color
		
		position = game.at(0,0)
	}
	
	method anterior(){
		 position = anterior
	}
	
	method moverseHaciaArriba(){
		anterior = position
		self.position(position.up(1))
	}
	
	method moverseHaciaAbajo(){
		anterior = position
		self.position(position.down(1))
	}
	
	method moverseHaciaIzquierda(){
		anterior = position
		self.position(position.left(1))
	}
	
	method moverseHaciaDerecha(){
		anterior = position
		self.position(position.right(1))
	}
	method choque(x){}
	
	method image() = "assets/conejo.png"
	
	
}

/*object zanahoria {
	
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
		//if()
			self.position(position.right(1)
	}
	
	
}
*/

class Vida {
	
	var property position 
	
	method image() = "assets/corazon.png"
	
}


const corazon3 = new Vida(position = game.at(23,19))
const corazon2 = new Vida(position = game.at(22,19))
const corazon1 = new Vida(position = game.at(21,19))