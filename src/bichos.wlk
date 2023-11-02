import wollok.game.*
import direcciones.*
import Paredes.*

class Bicho {
	var imagen = "assets/bicho.png" //es var, faltan hacer que se mueva
	
	var direccion
	var property position
	var property anterior = position
	const movimientos
	method image() = imagen
	
	method choque(objeto){
		objeto.recibeDanio()
	}
	
	method morir() {
		game.removeTickEvent("mover")
		game.removeVisual(self)
		imagen = "assets/explosion.png"
		game.addVisual(self)
		
		
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
		imagen = if (dir.cambiarBicho() != null) dir.cambiarBicho() else imagen
	}
	
	
	
	method cambiarDireccion() {direccion = movimientos.filter({movimiento => movimiento != direccion}).head()}
	
	method movimientoBicho1(){
	game.onTick(1.randomUpTo(5) * 200, "mover", {self.moverA(direccion)})
	game.whenCollideDo(self,{conejo => conejo.recibeDanio() self.cambiarDireccion() self.moverA(direccion)})
	}
	
	method movimientoBicho2(){
	game.onTick(1.randomUpTo(5) * 200, "mover", {self.moverA(direccion)})
	game.whenCollideDo(self,{conejo => conejo.recibeDanio() self.cambiarDireccion() self.moverA(direccion)})	
	}
	
	method movimientoBicho3(){
	self.movimientoBicho1()	
	}
	
	method movimientoBicho4(){
	self.movimientoBicho1()	
	}
	
	method movimientoBicho5(){
	self.movimientoBicho1()	
	}
	
	method movimientoBicho6(){
	self.movimientoBicho2()	
	}

}

const bichos = [bicho1, bicho2, bicho3, bicho4, bicho5, bicho6]

const bicho1 = new Bicho(position = game.at(2,4), direccion = derecha, movimientos = [derecha, izquierda])
const bicho2 = new Bicho(position = game.at(12,6), direccion = arriba, movimientos = [abajo, arriba])
const bicho3 = new Bicho(position = game.at(8,9), direccion = derecha, movimientos = [derecha,izquierda])
const bicho4 = new Bicho(position = game.at(1,6), direccion = derecha, movimientos = [derecha,izquierda])
const bicho5 = new Bicho(position = game.at(1,1), direccion = derecha, movimientos = [derecha,izquierda])
const bicho6 = new Bicho(position = game.at(8,11), direccion = arriba, movimientos = [abajo, arriba])