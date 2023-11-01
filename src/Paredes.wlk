import wollok.game.*

class Paredes {
	
	var property position
	method image() = "assets/bloque.png"
	
	method position()= position
	
	method choque(conejo){
        conejo.anterior()
    }
}

const paredes = [pared1, pared2, pared3, pared4, pared5, pared6, pared7, pared8, pared9, pared10, pared11, pared12, pared13, pared14, pared15, pared16, pared17, pared18, pared19, 
    pared20, pared21, pared22, pared23, pared24, pared25, pared26, pared27, pared28, pared29, pared30, pared31, pared32, pared33, pared34, pared35, pared36, pared37, 
    pared38, pared39, pared40, pared41, pared42, pared43, pared44, pared45, pared46, pared47, pared48, pared49, pared50, pared51, pared52, pared53, pared54,pared55, 
    pared56, pared57, pared58, pared59, pared60, pared61, pared62, pared63, pared64, pared65, pared66, pared67, pared68, pared69, pared70, pared71,pared72,pared73,pared74,
    pared75,pared76,pared77,pared78,pared79,pared80,pared81,pared82,pared83,pared84,pared85,pared86,pared87,pared88,pared89,pared90,pared91,pared92,pared93
    ,pared94,pared95,pared96,pared97,pared98,pared99,pared100,pared101
   ]


// Contorno:
const pared1 = new Paredes(position = game.at(0,0))
const pared2 = new Paredes(position = game.at(1,0))
const pared3 = new Paredes(position = game.at(2,0))
const pared4 = new Paredes(position = game.at(3,0))
const pared5 = new Paredes(position = game.at(4,0))
const pared6 = new Paredes(position = game.at(5,0))
const pared7 = new Paredes(position = game.at(6,0))
const pared8 = new Paredes(position = game.at(7,0))
const pared9 = new Paredes(position = game.at(8,0))
const pared10 = new Paredes(position = game.at(9,0))
const pared11 = new Paredes(position = game.at(13,0))
const pared12 = new Paredes(position = game.at(14,0))
const pared13 = new Paredes(position = game.at(15,0))

const pared14 = new Paredes(position = game.at(0,1))
const pared15 = new Paredes(position = game.at(0,2))
const pared16 = new Paredes(position = game.at(0,3))
const pared17 = new Paredes(position = game.at(0,4))
const pared18 = new Paredes(position = game.at(0,5))
const pared19 = new Paredes(position = game.at(0,6))
const pared20 = new Paredes(position = game.at(0,7))
const pared21 = new Paredes(position = game.at(0,8))
const pared22 = new Paredes(position = game.at(0,9))
const pared23 = new Paredes(position = game.at(0,11))
const pared24 = new Paredes(position = game.at(0,12))
const pared25 = new Paredes(position = game.at(0,13))
const pared26 = new Paredes(position = game.at(11,0))

const pared27 = new Paredes(position = game.at(14,1))
const pared28 = new Paredes(position = game.at(14,2))
const pared29 = new Paredes(position = game.at(14,3))
const pared30 = new Paredes(position = game.at(14,4))
const pared31 = new Paredes(position = game.at(14,5))
const pared32 = new Paredes(position = game.at(14,6))
const pared33 = new Paredes(position = game.at(14,7))
const pared34 = new Paredes(position = game.at(14,8))
const pared35 = new Paredes(position = game.at(14,9))
const pared36 = new Paredes(position = game.at(14,11))
const pared37 = new Paredes(position = game.at(14,12))
const pared38 = new Paredes(position = game.at(14,13))
const pared39 = new Paredes(position = game.at(14,10)) 

const pared40 = new Paredes(position = game.at(1,13))
const pared41 = new Paredes(position = game.at(2,13))
const pared42 = new Paredes(position = game.at(3,13))
const pared43 = new Paredes(position = game.at(4,13))
const pared44 = new Paredes(position = game.at(5,13))
const pared45 = new Paredes(position = game.at(6,13))
const pared46 = new Paredes(position = game.at(7,13))
const pared47 = new Paredes(position = game.at(8,13))
const pared48 = new Paredes(position = game.at(9,13))
const pared49 = new Paredes(position = game.at(10,13))
const pared50 = new Paredes(position = game.at(11,13))
const pared51 = new Paredes(position = game.at(12,13))
const pared52 = new Paredes(position = game.at(13,13)) 
const pared53 = new Paredes(position = game.at(14,13)) 
const pared54 = new Paredes(position = game.at(10,0)) 
const pared55 = new Paredes(position = game.at(12,0)) 

// Internos 
const pared56 = new Paredes(position = game.at(1,8))
const pared57 = new Paredes(position = game.at(2,8))
const pared58 = new Paredes(position = game.at(3,8))
const pared59 = new Paredes(position = game.at(4,8))
const pared60 = new Paredes(position = game.at(5,8))
const pared61 = new Paredes(position = game.at(6,8))
const pared62 = new Paredes(position = game.at(3,9))
const pared63 = new Paredes(position = game.at(3,10))
const pared64 = new Paredes(position = game.at(3,11))

const pared65 = new Paredes(position = game.at(6,12))
const pared66 = new Paredes(position = game.at(6,11))
const pared67 = new Paredes(position = game.at(6,10))
const pared68 = new Paredes(position = game.at(7,10)) 
const pared69 = new Paredes(position = game.at(8,10)) 

const pared70 = new Paredes(position = game.at(11,8)) 
const pared71 = new Paredes(position = game.at(11,9)) 
const pared72 = new Paredes(position = game.at(11,10)) 
const pared73 = new Paredes(position = game.at(11,11)) 
const pared74 = new Paredes(position = game.at(11,12)) 
const pared75 = new Paredes(position = game.at(10,8)) 
const pared76 = new Paredes(position = game.at(9,8)) 
const pared77 = new Paredes(position = game.at(8,8)) 

const pared78 = new Paredes(position = game.at(3,5)) 
const pared79 = new Paredes(position = game.at(4,5)) 
const pared80 = new Paredes(position = game.at(5,5)) 
const pared81 = new Paredes(position = game.at(6,5)) 
const pared82 = new Paredes(position = game.at(7,5)) 
const pared83 = new Paredes(position = game.at(8,5)) 
const pared84 = new Paredes(position = game.at(8,6)) 
const pared85 = new Paredes(position = game.at(8,7)) 

const pared86 = new Paredes(position = game.at(10,5)) 
const pared87 = new Paredes(position = game.at(11,5)) 
const pared88 = new Paredes(position = game.at(12,5)) 
const pared89 = new Paredes(position = game.at(13,5)) 

const pared90 = new Paredes(position = game.at(10,3)) 
const pared91 = new Paredes(position = game.at(11,3)) 
const pared92 = new Paredes(position = game.at(12,3)) 
const pared93 = new Paredes(position = game.at(13,3)) 

const pared94 = new Paredes(position = game.at(3,2)) 
const pared95 = new Paredes(position = game.at(4,2)) 
const pared96 = new Paredes(position = game.at(5,2)) 
const pared97 = new Paredes(position = game.at(6,2)) 
const pared98 = new Paredes(position = game.at(7,2)) 
const pared99 = new Paredes(position = game.at(8,2)) 
const pared100 = new Paredes(position = game.at(3,3)) 
const pared101 = new Paredes(position = game.at(8,3)) 
