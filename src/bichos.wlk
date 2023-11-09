import wollok.game.*
import direcciones.*
import Paredes.*

class Bicho {
	var imagen = "assets/bicho.png" 
	
	var direccion
	var property position
	var property anterior = position

	method image() = imagen
	
	method choque(objeto){
		objeto.recibeDanio()
	}
	
	method morir() {
		game.removeTickEvent("mover")
		imagen = "assets/explosion.png"
	}
	
	method anterior(){
		position = anterior
		return anterior
	}
	
	method reiniciar(){
		imagen = "assets/bicho.png"
	}
	
	method moverA(dir) {
		anterior = position
		position = dir.siguientePosicion(position) 
		imagen = dir.cambiarBicho() 
	}
	
	method cambiarDireccion() {direccion = direccion.opuesta()}
	
	method moverBicho(){
		game.onTick(1.randomUpTo(5) * 200, "mover", {self.moverA(direccion)})
		game.whenCollideDo(self,{conejo => conejo.recibeDanio() self.cambiarDireccion() self.moverA(direccion)})	
	}

}

const bichos = [bicho1, bicho2, bicho3, bicho4, bicho5, bicho6]

const bicho1 = new Bicho(position = game.at(2,4), direccion = derecha)
const bicho2 = new Bicho(position = game.at(12,6), direccion = arriba)
const bicho3 = new Bicho(position = game.at(8,9), direccion = derecha)
const bicho4 = new Bicho(position = game.at(1,6), direccion = derecha)
const bicho5 = new Bicho(position = game.at(1,1), direccion = derecha)
const bicho6 = new Bicho(position = game.at(8,11), direccion = arriba)