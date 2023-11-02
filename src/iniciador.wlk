import wollok.game.*
import bichos.*
import Protagonista.*
import Paredes.*
import niveles.*


object juego {
	
	const ost = game.sound("Ost.mp3")
		
	method iniciar(){
		
		ost.shouldLoop(true)
		game.schedule(500, { ost.play()} )
		
		game.title("Conejo Malo")

		game.width(15)
		game.height(14)
		
		self.cargarMenu()
		
		
		game.start()
		}
	
	method cargarVisuales() {
	 game.clear()
   	 game.addVisual(nivel)
   	 game.addVisual(conejo)
   	 
     paredes.forEach({ pared => game.addVisual(pared) })
     game.addVisual(corazon1)
     game.addVisual(corazon2)
     game.addVisual(corazon3)
     game.addVisual(bicho1)
   	 game.addVisual(bicho2)
  	 game.addVisual(bicho3)
  	 game.addVisual(tnt1)
   	 game.addVisual(tnt2)
  	 game.addVisual(tnt3)
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
	keyboard.del().onPressDo({game.stop()})
	
	}
  
	method volverAlMenu(){
		
		game.clear()
		self.cargarMenu()
		conejo.reiniciar()
		bichos.forEach({bicho => bicho.reiniciar()})
		}
		
}
	

