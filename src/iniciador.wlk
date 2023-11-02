import wollok.game.*
import bichos.*
import Protagonista.*
import Paredes.*
import niveles.*


object juego {
	
	const ost = game.sound("Ost.mp3")
		
	method iniciar(){
				//musica de fondo
		
		ost.shouldLoop(true)
		game.schedule(500, { ost.play()} )
		
		game.title("Bad Bunny")

		game.width(15)
		game.height(14)
		
		self.cargarMenu()
		
		
		game.start()
		}
	
	method cargarVisuales() {
	 game.clear()
   	 game.addVisual(nivel)
   	 game.addVisual(conejo)
   	 game.addVisual(bicho1)
   	 game.addVisual(bicho2)
  	 game.addVisual(bicho3)
     paredes.forEach({ pared => game.addVisual(pared) })
     game.addVisual(corazon1)
     game.addVisual(corazon2)
     game.addVisual(corazon3)
     game.onCollideDo(conejo, { pared => pared.choque(conejo) })
     self.teclas()
}
	
	method cargarMenu(){
		game.addVisual(menu)
		keyboard.space().onPressDo({self.cargarVisuales()})
	}
	
	method teclas() {
	keyboard.up().onPressDo( { conejo.moverseHaciaArriba() } )
	keyboard.down().onPressDo( { conejo.moverseHaciaAbajo() } )
	keyboard.left().onPressDo( { conejo.moverseHaciaIzquierda() } )
	keyboard.right().onPressDo( { conejo.moverseHaciaDerecha() } )
  	keyboard.plusKey().onPressDo({ost.volume(1)})
	keyboard.minusKey().onPressDo({ost.volume(0.5)})
	keyboard.p().onPressDo({ost.pause()})
	keyboard.r().onPressDo({ost.resume()})
	keyboard.s().onPressDo({ost.stop()})
	
	}
  
	method volverAlMenu(){
		
		game.clear()
		self.cargarMenu()
		conejo.reiniciar()
		}
		
}
	

