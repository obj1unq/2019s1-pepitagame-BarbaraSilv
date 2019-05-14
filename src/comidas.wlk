import wollok.game.*
import pepita.*

class Manzana {
	method image() = "manzana.png" 
							
	
	method position() = game.at(5,1)
	method energia() = 80
	//method colisionasteCon(persona){
	//	persona.agarrarComida(self)
	//}
	method colisionaste(golondrina){
		golondrina.come(self)
	}
}

class Alpiste {
	method image() = "alpiste.png" 
	
	//method colisionasteCon(persona){
	//	persona.agarrarComida(self)
	//}						
	method colisionaste(golondrina){
		golondrina.come(self)
	}						
	method position() = game.at(5,5)
	method energia() = 5
	
}
