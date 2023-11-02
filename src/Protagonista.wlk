import wollok.game.*
import iniciador.*
import bichos.*

object conejo {
	
	var corazones = [corazon1, corazon2, corazon3]
	var property position = game.at(0,10)
	var property anterior = position
	var explosivos = 0
	var imagen = "assets/conejo.png"
	
	
	method recibeDanio() {
		game.removeVisual(corazones.head())
		corazones = corazones.drop(1)	
		
		if (corazones.size() == 0){
			game.schedule(200,{=>game.say(self,"(x_x)")})
			game.schedule(2000,{=>juego.volverAlMenu()})
		}
		
		position = game.at(0,10)	
		game.schedule(100,{=>game.say(self,"Auch")})	
	}
	

		
	
	method reiniciar() {
		corazones = [corazon1, corazon2, corazon3]
		explosivos = 0
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
	
	
	method agarraTNT(tnt){
		explosivos += 1
		game.removeVisual(tnt)
		game.schedule(200,{=>game.say(self,"(^-^)")})
		if(explosivos == 3){
			bichos.forEach({bicho => bicho.morir()})
			game.schedule(400,{=>game.say(self,"¡Logramos salvar el día!")})
			game.schedule(3000,{=>juego.volverAlMenu()})
		}
	}
	
	method ganador() = explosivos == 3
	method image() = imagen
	
	
}

class TNT{
	var property position
	method image() = "assets/tnt.png"
	method choque(conejo){
		conejo.agarraTNT(self)
	}
	
}


const tnt1 = new TNT(position = game.at(1,1))
const tnt2 = new TNT(position = game.at(13,4))
const tnt3 = new TNT(position = game.at(7,11))

class Vida {
	
	var property position
	var property posicionInicial = game.at(1000,1000)

	method image() = "assets/corazon.png"
	
}


const corazon3 = new Vida(position = game.at(14,13))
const corazon2 = new Vida(position = game.at(13,13))
const corazon1 = new Vida(position = game.at(12,13))
