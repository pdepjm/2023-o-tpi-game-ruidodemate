import bichos.*
import Protagonista.*

object arriba {
    method siguientePosicion(pos) = pos.up(1)
    method cambiarImagen(){return "assets/conejo.png"} 
    method cambiarBicho(){return "assets/bicho.png"}
    method opuesta(){return abajo}
}

object derecha {
    method siguientePosicion(pos) = pos.right(1)
    method cambiarImagen(){return "assets/conejo.png"}
    method cambiarBicho(){return "assets/bicho.png"}
    method opuesta(){return izquierda}
}

object izquierda {
    method siguientePosicion(pos) = pos.left(1)
    method cambiarImagen(){return "assets/conejoi.png"}
    method cambiarBicho(){return "assets/bichoi.png"}
    method opuesta(){return derecha}
}

object abajo { 
    method siguientePosicion(pos) = pos.down(1)
    method cambiarImagen(){return "assets/conejoi.png"}
    method cambiarBicho(){return "assets/bichoi.png"}
    method opuesta(){return arriba}
}
