object knightRider {
	
	method peso() = 500
	
	method nivelDePeligro() = 10
}

object bumblebee {
	var property estaEnModoAuto
	
	method peso() = 800
	
	method nivelDePeligro() = if(estaEnModoAuto) { return 15 } else { return 30 } 
}

object paqueteLadrillos{
	var property cantidadDeLadrillos
	
	method peso() = cantidadDeLadrillos * 2
	
	method nivelDePeligro() = 2
}

object arena {
	var property peso
	
	method peso() = peso
	
	method nivelDePeligro() = 1
}

object bateriaAntiaerea {
	var property estaConMisiles
	
	method peso() = if(estaConMisiles) { return 300 } else { return 200 }
	
	method nivelDePeligro() = if(estaConMisiles) { return 100 } else { return 0}
}

object contenedor {
	var cosasAdentro = []
	
	method peso() = 100 + cosasAdentro.sum( { c => c.peso() } )
	
	method nivelDePeligro() = if (cosasAdentro.isEmpty()){ return 0 } else { return cosasAdentro.max( { op => op.nivelDePeligro() } ).nivelDePeligro() }
	
	method cosasAdentro(cosas) = cosasAdentro.addAll(cosas)
	
	method cosasAdentro() = cosasAdentro
}

object residuosRadioactivos {
	var property peso
	
	method peso() = peso
	
	method nivelDePeligro() = 200
}

object embalajeSeguridad {
	var property cosaInterior
	
	method peso() = cosaInterior.peso()
		
	method nivelDePeligro() = cosaInterior.nivelDePeligro() /2
}

