import wollok.game.*
import iniciador.*

object conejo {
	
	var corazones = [corazon1, corazon2, corazon3]
	var property position = game.at(0,10)
	var property anterior = position
	
	var imagen = "assets/conejo.png"
	
	
	method recibeDanio() {
		game.removeVisual(corazones.head())
		corazones = corazones.drop(1)	
		
		if (corazones.size() == 0){
			juego.volverAlMenu()
		}
		
		position = game.at(0,10)		
	}
	
	method reiniciar() {
		corazones = [corazon1, corazon2, corazon3]
	}
	
	method cantCorazones() = corazones.size()
	
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

/*class huevo
*/

class Vida {
	
	var property position
	var property posicionInicial = game.at(1000,1000)

	method image() = "assets/corazon.png"
	
}


const corazon3 = new Vida(position = game.at(14,13))
const corazon2 = new Vida(position = game.at(13,13))
const corazon1 = new Vida(position = game.at(12,13))
