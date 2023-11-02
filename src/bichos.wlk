import wollok.game.*

class Bicho {
	var imagen = "assets/bicho.png" //es var, faltan hacer que se mueva
	
	var property position
	var property anterior = position
	const movimientos= [izquierda,derecha,abajo,arriba] 
	method image() = imagen
	
	method choque(objeto){
		objeto.recibeDanio()
	}
	
	method morir() {
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
	}
	
	
	method movimiento(){
	const dir = movimientos.get(0.randomUpTo(4).truncate(0))
     game.onTick(150,"mover bicho",{self.moverA(dir)})
	}
	method parar(){
	game.removeTickEvent("mover bicho")
	self.movimiento()
	}
	
}



object arriba {
    
    method siguientePosicion(pos) = pos.up(1)
 
}

object derecha {
  
    method siguientePosicion(pos) = pos.right(1)

}

object izquierda {
    method siguientePosicion(pos) = pos.left(1)
}

object abajo { 
    method siguientePosicion(pos) = pos.down(1)
}

const bichos = [bicho1, bicho2, bicho3]

const bicho1 = new Bicho(position = game.at(2,4))
const bicho2 = new Bicho(position = game.at(12,6))
const bicho3 = new Bicho(position = game.at(8,9))
