/* colores */
object rojo { method esFuerte() { return true } }
object verde {method esFuerte() { return true }  }  // completar
object celeste { method esFuerte() { return false } }  // completar
object pardo {method esFuerte() { return false }  }  // completar

/* materiales */
object cobre{method brilla(){return true}}
object lino { method brilla() { return false } }
object vidrio { method brilla() { return true } }
object madera{method brilla() { return false }}
object cuero{method brilla() { return false }}
// agregar: cobre, madera, cuero

/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo  }  // completar
	method material() { return cuero }  // completar
	method peso() { return 1300 }  // completar
}

object munieco {
	var peso = 0
	
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return peso }
	method setPeso(valor) { peso = valor }
}

object biblioteca{
	method peso(){return 8000}
	method color(){return verde}
	method material(){return madera}
}

object placaCobre{
	var peso
	var color
	method peso(){return peso}
	method peso(cantidad){ peso=cantidad}
	method material(){return cobre}
	
	method color(){return color}
	method color(unColor){color=unColor}
	
	
	
}
// agregar biblioteca y placa

