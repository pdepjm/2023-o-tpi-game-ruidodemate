import wollok.game.*

class Bicho {

	// const vida = 2
	const imagen = "assets/bicho.png" //es var, faltan hacer que se mueva
	
	var property position

	method image() = imagen
	
	method choque(conejo){
		conejo.recibeDanio()
	}

	/*method recibeAtaque() {
		if(position == zanahoria.position){
			vida-=1
		}
		vida -= 1
	}*/
	
	/* method recibeDanio() {
		vida -=1
	}

	method morir() = if (vida == 0) position = game.at(30,30) else position */
	
}



const bicho1 = new Bicho(position = game.at(20,14))
const bicho2 = new Bicho(position = game.at(14,6))
const bicho3 = new Bicho(position = game.at(9,12))
