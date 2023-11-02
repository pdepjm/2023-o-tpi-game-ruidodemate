import bichos.*
import Protagonista.*

object arriba {
    method siguientePosicion(pos) = pos.up(1)
    method cambiarImagen(){return null} 
    method cambiarBicho(){return null}
}

object derecha {
    method siguientePosicion(pos) = pos.right(1)
    method cambiarImagen(){return "assets/conejo.png"}
    method cambiarBicho(){return "assets/bicho.png"}
}

object izquierda {
    method siguientePosicion(pos) = pos.left(1)
    method cambiarImagen(){return "assets/conejoi.png"}
    method cambiarBicho(){return "assets/bichoi.png"}
}

object abajo { 
    method siguientePosicion(pos) = pos.down(1)
    method cambiarImagen(){return null} 
    method cambiarBicho(){return null}
}
