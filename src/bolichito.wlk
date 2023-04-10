import objetos.*
object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		const elDeMostradorBrilla =
    objetoEnMostrador.material().brilla() 
		const elDeVidrieraBrilla =
    objetoEnVidriera.material().brilla()
		return elDeMostradorBrilla and elDeVidrieraBrilla
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
			return objetoEnMostrador.peso() >         objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
			return objetoEnMostrador.color() ==color or objetoEnVidriera.color()== color
	}

	method puedeOfrecerleAlgoA(persona) {
		return persona.leGusta(objetoEnMostrador) or 
    persona.leGusta(objetoEnVidriera)
	}
  method puedeMejorar(){
  return self.esMonocromatico() or self.estaDesequilibrado()
  }
}

object naranja {
  method esFuerte() { return true }

}

object arito {
  method color() { return celeste}
	method material() { return cobre}
	method peso() { return 180}
}

object banquito {
  var color=naranja
  method color(){return color}
  method setColor(colorN){color=colorN}
  method material() { return madera}
	method peso() { return 1700}
}

object cajita {
  var cosas
  method color(){return rojo}
	method material() { return cobre }
	method peso() { return 400 + cosas.peso()}
  
  
  
  method ponerAdentro(cosa) { cosas=cosa} 
    method cosa(){return cosas}
  
}


object ernesto {
	method leGustaLaCajita() { 
	   return cajita.peso() > 2500 || not cajita.cosa().material().brilla()
	} 
}