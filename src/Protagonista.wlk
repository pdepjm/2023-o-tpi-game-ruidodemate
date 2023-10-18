import wollok.game.*

object conejo {
	
	var corazones = 3
	
	var property position = game.at(1,1)
	
	method recibeDanio() {corazones -=1
		
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
	
	//method vida() = "assets/corazones" + corazones + ".png"
	
	
}
 /* ¿Como hacer para que se mueva en loop?
object arma {
	
	var property position = conejo.position()
	
	method image() = "bala.png"
	
	method disparar(){
		self.position()
	}
	
}*/


class Vida {
	
	var property position 
	
	method image() = "assets/corazon.png"
	
}


const corazon3 = new Vida(position = game.at(23,19))
const corazon2 = new Vida(position = game.at(22,19))
const corazon1 = new Vida(position = game.at(21,19))