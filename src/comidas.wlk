import wollok.game.*
import pepita.*

object manzana {
	method image() = "manzana.png" 
							
	
	method position() = game.at(5,1)
	method energia() = 80
	method colisionasteCon(persona){
		persona.agarrarComida(self)
	}
}

object alpiste {
	method image() = "alpiste.png" 
							
							
	method position() = game.at(5,5)
	method energia() = 5
	//
}
