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
		game.removeVisual(self)
		imagen = "assets/explosion.png"
		game.addVisual(self)
		game.removeTickEvent("mover")
		
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
	game.onTick(1.randomUpTo(5) * 100, "mover", {self.moverA(direccion)})
	game.whenCollideDo(self,{conejo => conejo.recibeDanio() self.cambiarDireccion() self.moverA(direccion)})
	}
	
	method movimientoBicho2(){
	game.onTick(1.randomUpTo(5) * 150, "mover", {self.moverA(direccion)})
	game.whenCollideDo(self,{conejo => conejo.recibeDanio() self.cambiarDireccion() self.moverA(direccion)})	
	}
	
	method movimientoBicho3(){
	game.onTick(1.randomUpTo(5) * 150, "mover", {self.moverA(direccion)})
	game.whenCollideDo(self,{conejo => conejo.recibeDanio() self.cambiarDireccion() self.moverA(direccion)})	
	}
	

}

const bichos = [bicho1, bicho2, bicho3]

const bicho1 = new Bicho(position = game.at(2,4), direccion = derecha, movimientos = [derecha, izquierda])
const bicho2 = new Bicho(position = game.at(12,6), direccion = arriba, movimientos = [abajo, arriba])
const bicho3 = new Bicho(position = game.at(8,9), direccion = derecha, movimientos = [derecha,izquierda])