import wollok.game.*
import bichos.*
import Protagonista.*
import Paredes.*
import niveles.*
import direcciones.*


object juego {
	
	const ost = game.sound("assets/Ost.mp3")
		
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
  	 game.addVisual(bicho4)
  	 game.addVisual(bicho5)
  	 game.addVisual(bicho6)
  	 game.addVisual(tnt1)
   	 game.addVisual(tnt2)
  	 game.addVisual(tnt3)
  	 game.addVisual(tnt4)
  	 game.addVisual(tnt5)
     game.onCollideDo(conejo, { pared => pared.choque(conejo) })
 
    bicho1.movimientoBicho1()
    bicho2.movimientoBicho2()
    bicho3.movimientoBicho3()
    bicho4.movimientoBicho4()
    bicho5.movimientoBicho5()
    bicho6.movimientoBicho6()
    
     self.teclas()
}
	
	method cargarMenu(){
		game.addVisual(menu)
		keyboard.space().onPressDo({self.cargarVisuales()})
	}
	
	method teclas() {
	keyboard.up().onPressDo( { conejo.moverA(arriba) } )
	keyboard.down().onPressDo( { conejo.moverA(abajo) } )
	keyboard.left().onPressDo( { conejo.moverA(izquierda) } )
	keyboard.right().onPressDo( { conejo.moverA(derecha) } )
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
	

