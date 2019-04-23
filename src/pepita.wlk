import ciudades.*
import wollok.game.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	var amiga= null
	method image() = if (energia > 100) {
	 					"pepita-gorda-raw.png"
	 				} else "pepita.png" 	
	 					
//

	method come(comida) { 
		energia = energia + comida.energia()
		
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad ){
			self.volaSiPuede(unaCiudad)
			
			}
		else 
			game.say(self,"Ya estoy en" + unaCiudad.nombre() + "!") 
	}
	
	method volaSiPuede(unaCiudad){
		if (energia > self.energiaParaVolar(position.distance(unaCiudad.position()))){
		self.move(unaCiudad.position())
			ciudad = unaCiudad
		}
		else 
			game.say(self,"Dame de Comer Primero!")
	
}	
	

 method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}
	
	method volarYComer(comida){
		self.move(comida.position())
		game.removeVisual(comida)
		self.come(comida)
		
	}	
	method nuevaAmiga(ave){
		if(amiga != ave) {
			game.say(self,"Hola" + ave.nombre() + "!")
			amiga = ave
		}
	}
}

object pepona{
	method image() = "pepona.png"
	method position() = game.at(2,8) 
	method nombre() = "pepona"
}

object pipa{
	method image() = "pepitaCanchera.png"
	method position() = game.at(3,1)
	method nombre()="pipa"
}

object roque{
	var mochila = null
	var property position = game.at(2,3)
	
	method image()= "jugador.png"
	
	method agarrarComida(comida){ 
		if (mochila != comida) {
			game.addVisualIn(mochila, game.at(1.ramdomUpto(8).truncate(0),1.ramdomUpto(8).truncate(0)))  
			mochila = comida
			game.removeVisual(comida)
			
		}
	}
	
	method alimentar(ave){
		
	}
	
	method move(nuevaPosicion){
		self.position(nuevaPosicion)
	}
}
 



