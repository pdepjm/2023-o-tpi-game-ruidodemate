import wollok.game.*

object conejo {
	
	var corazones = [corazon1, corazon2, corazon3]
	var property position = game.at(2,2)
	var property anterior = position
	//method municion() = [zanahoria, zanahoria, zanahoria, zanahoria]
	
	var imagen = "assets/conejo.png"
	method position()= position
	
	method recibeDanio() {
		corazones.head().delete()
		corazones = corazones.drop(1)	
		
		if (corazones.size() == 0){
			//inicio
		}
		
		position = game.at(2,2)		
	}
	
	method anterior(){
		position = anterior
		return anterior
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
		imagen = "assets/conejoi.png"
	}
	
	method moverseHaciaDerecha(){
		anterior = position
		self.position(position.right(1))
		imagen = "assets/conejo.png"
	}
	method choque(x){}
	
	method image() = imagen
	
	
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
	
	method delete(){position =  game.at(1000,1000)}
	method image() = "assets/corazon.png"
	
}


const corazon3 = new Vida(position = game.at(23,19))
const corazon2 = new Vida(position = game.at(22,19))
const corazon1 = new Vida(position = game.at(21,19))
