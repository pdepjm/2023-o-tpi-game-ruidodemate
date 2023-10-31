import wollok.game.*
import bichos.*
import Protagonista.*
import Paredes.*

object programa{
	const musicaDeFondo = game.sound("assets/Ost.mp3")
	method iniciar(){
		game.start()
		self.hacerConfiguracionInicial()
		self.movimientosDeTeclado()
		musicaDeFondo.play()
		musicaDeFondo.volume(0.02)
		musicaDeFondo.shouldLoop(true)
		game.schedule(500, { musicaDeFondo.play()} )
	}
	
	
	
	
	method movimientosDeTeclado(){
		
		keyboard.up().onPressDo( { if(game.onCollideDo(conejo,{pared => conejo.chocaCon(pared)})){
		
		conejo.moverseHaciaArriba()}})
		keyboard.down().onPressDo( { conejo.moverseHaciaAbajo() game.onTick(10, "disparar abajo" , { zanahoria.dispararHaciaAbajo() } ) } )
		keyboard.left().onPressDo( { conejo.moverseHaciaIzquierda() game.onTick(10, "disparar izq" , { zanahoria.dispararHaciaIzquierda() } )} )
		keyboard.right().onPressDo( { conejo.moverseHaciaDerecha() game.onTick(10, "disparar der" , { zanahoria.dispararHaciaDerecha() } ) } )
		keyboard.plusKey().onPressDo({musicaDeFondo.volume(1)})
		keyboard.m().onPressDo({musicaDeFondo.volume(0)})
		keyboard.minusKey().onPressDo({musicaDeFondo.volume(0.5)})
	}
	
	
	method hacerConfiguracionInicial(){
		
		game.title("Bad Bunny")
		game.width(24)
		game.height(20)
		game.boardGround("pasto.jpg")
		game.addVisual(conejo) //mejorar que cambie de imagen con las flechas
		game.addVisual(corazon1)
		game.addVisual(corazon2)
		game.addVisual(corazon3)
		game.addVisual(bicho1)
		game.addVisual(bicho2)
		game.addVisual(bicho3)
		self.agregarParedes()
	}
	
	method agregarParedes() {
		
	
		const paredes = [pared1, pared2, pared3, pared4, pared5, pared6, pared7, pared8, pared9, pared10, pared11, pared12, pared13, pared14, pared15, pared16, pared17, pared18, pared19, 
    pared20, pared21, pared22, pared23, pared24, pared25, pared26, pared27, pared28, pared29, pared30, pared31, pared32, pared33, pared34, pared35, pared36, pared37, 
    pared38, pared39, pared40, pared41, pared42, pared43, pared44, pared45, pared46, pared47, pared48, pared49, pared50, pared51, pared52, pared53, pared54, pared55, 
    pared56, pared57, pared58, pared59, pared60, pared61, pared62, pared63, pared64, 
    pared65, pared66, pared67, pared68, pared69]
   
		//69.times({ i => game.addVisual(paredes)})
	}
	

}