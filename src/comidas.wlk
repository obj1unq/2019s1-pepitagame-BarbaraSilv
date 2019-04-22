import wollok.game.*
import pepita.*

object manzana {
	method image() = if  (pepita.position() != self.position()){
							"manzana.png" }
							else"suelo.png"
	
	method position() = game.at(5,1)
	method energia() = 80
	//method suelo() = "suelo.png"
}

object alpiste {
	method image() = if  (pepita.position() != self.position()){
							"alpiste.png" }
							else"suelo.png"
							
	method position() = game.at(5,5)
	method energia() = 5
	//method suelo()="suelo.png"
}
