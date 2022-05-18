/* Te deje varios comentarios sobre los métodos */

import cosas.*

object camion {
	var camion = []

	method cargar(cosa) { camion.add(cosa) }
	
	method descargar(cosa) { camion.remove(cosa) }
	
	method todoPesoPar() = camion.all( { p => p.peso().even() } )
	
	method hayAlgunoQuePesa(nivel) = camion.any( { p => p.peso() == nivel} )
	
	/* Aca debias usar find */
	method elDeNivel(nivel) = camion.filter( { p => p.nivelDePeligro() == nivel } ).first()

	method pesoTotal() = 1000 + camion.sum( { p => p.peso() } )
	
	method excedidoDePeso() = self.pesoTotal() > 2500
	
	method objetosQueSuperanPeligrosidad(nivel) = camion.filter( { p => p.nivelDePeligro() > nivel } )
	
	/* Aca podias reutilizar objetosQueSuperanPeligrosidad(nivel)  */
	//method objetosMasPeligrososQue(cosa) = camion.filter( { p => p.nivelDePeligro() > cosa.nivelDePeligro() } )
	method objetosMasPeligrososQue(cosa) = self.objetosQueSuperanPeligrosidad(cosa.nivelDePeligro())
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) = camion.all( { p => p.nivelDePeligro() <  nivelMaximoPeligrosidad} ) and not self.excedidoDePeso()
	
	method tieneAlgoQuePesaEntre(min, max) = camion.any( { p => p.peso().between(min, max) } )
	
	/*Este esta mal */
	method cosaMasPesada() = camion.max( { p => p.peso() } )
	
	method pesos() = camion.map( { p => p.peso() } )
}
