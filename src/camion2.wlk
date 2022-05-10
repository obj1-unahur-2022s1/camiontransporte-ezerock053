import cosas.*

object camion {
	var camion = []

	method cargar(cosa) { camion.add(cosa) }
	
	method descargar(cosa) { camion.remove(cosa) }
	
	method todoPesoPar() = camion.all( { p => p.peso().even() } )
	
	method hayAlgunoQuePesa(nivel) = camion.any( { p => p.peso() == nivel} )
	
	method elDeNivel(nivel) = camion.filter( { p => p.nivelDePeligro() == nivel } ).first()

	method pesoTotal() = 1000 + camion.sum( { p => p.peso() } )
	
	method excedidoDePeso() = self.pesoTotal() > 2500
	
	method objetosQueSuperanPeligrosidad(nivel) = camion.filter( { p => p.nivelDePeligro() > nivel } )
	
	method objetosMasPeligrososQue(cosa) = camion.filter( { p => p.nivelDePeligro() > cosa.nivelDePeligro() } )
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) = camion.all( { p => p.nivelDePeligro() <  nivelMaximoPeligrosidad} ) and not self.excedidoDePeso()
	
	method tieneAlgoQuePesaEntre(min, max) = camion.any( { p => p.peso().between(min, max) } )
	
	method cosaMasPesada() = camion.find( { p => p.peso().max() } )
	
	method pesos() = camion.map( { p => p.peso() } )
}
