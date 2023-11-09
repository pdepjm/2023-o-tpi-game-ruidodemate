import wollok.game.*
import iniciador.*
import bichos.*
import direcciones.*
import niveles.*


object conejo {
	
	var corazones = [corazon1, corazon2, corazon3]
	var property position = game.at(0,10)
	var property anterior = position
	var explosivos = 0

	var imagen = "assets/conejo.png"
	method image() = imagen
	
	method recibeDanio() {
		game.removeVisual(corazones.head())
		corazones = corazones.drop(1)	
		
		if (corazones.size() == 0){
			self.perder()
		}
		
		position = game.at(0,10)	
		game.schedule(100,{=>game.say(self,"Auch")})	
	}
	
	method perder(){
        imagen = "assets/fantasma.png"
        game.schedule(200,{=>game.say(self,"(x_x)")})
        game.addVisual(lose)
        game.schedule(2000,{=>juego.volverAlMenu()})
	}
	
	method reiniciar() {
		corazones = [corazon1, corazon2, corazon3]
		explosivos = 0
		position = game.at(0,10)
	}
	
	method cantCorazones() = corazones.size()
	
	method anterior(){
		position = anterior
		return anterior
	}
	
	method moverA(dir) {
		anterior = position
		position = dir.siguientePosicion(position) 
		imagen = dir.cambiarImagen()
	}
	
	method agarraTNT(tnt){
		explosivos += 1
		game.removeVisual(tnt)
		game.schedule(200,{=>game.say(self,"(^-^)")})
		if(explosivos == 5){
			self.ganar()
		}
	}
	
	method ganar() {
			bichos.forEach({bicho => bicho.morir()})
			game.schedule(400,{=>game.say(self,"¡Logramos salvar el día!")})
			game.addVisual(win)
			game.schedule(3000,{=>juego.volverAlMenu()})
	}
	
}


class TNT{
	var property position
	method image() = "assets/tnt.png"
	method choque(conejo){
		conejo.agarraTNT(self)
	}
	
}

const tnt1 = new TNT(position = game.at(1,7))
const tnt2 = new TNT(position = game.at(13,6))
const tnt3 = new TNT(position = game.at(7,11))
const tnt4 = new TNT(position = game.at(5,3))
const tnt5 = new TNT(position = game.at(13,2))

class Vida {
	
	var property position
	var property posicionInicial = game.at(1000,1000)

	method image() = "assets/corazon.png"
	
}

const corazon3 = new Vida(position = game.at(14,0))
const corazon2 = new Vida(position = game.at(13,0))
const corazon1 = new Vida(position = game.at(12,0))
