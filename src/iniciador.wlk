import wollok.game.*
import bichos.*
import Protagonista.*
import Paredes.*

object juego {
		
		method iniciar(){
				//musica de fondo
	/*const ost = game.sound("Ost.mp3")
	ost.shouldLoop(true)
	game.schedule(500, { ost.play()} )*/
			
		game.title("Bad Bunny")

		game.width(25)
		game.height(20)


	//imagenes
	game.boardGround("assets/pasto.jpg")
	game.addVisual(conejo) //mejorar que cambie de imagen con las flechas
	game.addVisual(corazon1)
	game.addVisual(corazon2)
	game.addVisual(corazon3)
	game.addVisual(bicho1)
	game.addVisual(bicho2)
	game.addVisual(bicho3)
	paredes.forEach({pared => game.addVisual(pared)})
	
	game.onCollideDo(conejo,{pared=>pared.choque(conejo)})
	
	
	//teclado
	keyboard.up().onPressDo( { conejo.moverseHaciaArriba() } )
	keyboard.down().onPressDo( { conejo.moverseHaciaAbajo() } )
	keyboard.left().onPressDo( { conejo.moverseHaciaIzquierda() } )
	keyboard.right().onPressDo( { conejo.moverseHaciaDerecha() } )
 /* 	keyboard.plusKey().onPressDo({ost.volume(1)})
	keyboard.m().onPressDo({ost.volume(0)})
	keyboard.minusKey().onPressDo({ost.volume(0.5)})
	keyboard.p().onPressDo({ost.pause()})
	keyboard.r().onPressDo({ost.resume()})
	keyboard.s().onPressDo({ost.stop()})*/
			
			game.start()
		}
	
	
  
	
	
}
