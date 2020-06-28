/////////PRENDAS/////////////
class Prenda{
	var property nivelDeDesgaste = self.desgaste()
	const property talle
	method desgaste()
	method nivelDeAbrigo()
	method usar()
	
	method comodidad(ninix){
		const talleNinix = ninix.talle()
		return self.comodidadMismoTalle(talleNinix) - self.nivelDeDesgaste().min(3)
	}
	method comodidadMismoTalle(talleNinix){
		return if(self.talle() == talleNinix){8}
				else {0}
	}
	method desgastar(nivelADesgastar){
		nivelDeDesgaste += nivelADesgastar
	}
	method nivelDeCalidadPrenda(ninix){
		return self.nivelDeAbrigo() + self.comodidad(ninix)
	}
}
class PrendaDeAPares inherits Prenda{
	const  derecho
	const  izquierdo
	
	override method desgaste(){
		return (derecho + izquierdo) / 2
	}
	override method comodidad(ninix){
		return if (ninix.esPequenio()){ super(ninix)- 1}
		else super(ninix)
	}
}
class PrendaParDerecha inherits PrendaDeAPares{
	var property nivelDeAbrigo = 1 //default
	override method desgaste() = 0
	override method usar(){
		self.desgastar(1.20)
	}
}
class PrendaParIzquierda inherits PrendaParDerecha{
	override method usar(){
		self.desgastar(0.8)
	}
}

class PrendaLiviana inherits Prenda{
	var property nivelDeAbrigo = 1
	override method desgaste()=0
	override method comodidad(ninix){
		return super(ninix)+2
	}
	
	method modificarNivelAbrigo(nuevoNivelAbrigo){
		nivelDeAbrigo = nuevoNivelAbrigo
	}
	override method usar(){
		self.desgastar(1)
	}
	
}
class PrendaPesada inherits Prenda{
	var property nivelDeAbrigo = 3 //default
	override method desgaste() = 0
	override method usar(){
		self.desgastar(1)
	}
}
/////////////FAMILIA//////////////////
class Familia{
	const property ninixs = #{}
	
	method puedeSalirDePaseo(){
		return ninixs.all({ninix => ninix.estaListo()})
	}
	method prendasInfaltables(){
		return ninixs.map({ninix => ninix.prendaDeMaximaCalidad()})
	}
	method niniosPequenios(){
		return ninixs.filter({ninix => ninix.esPequenio()})
	}
	method salirDePaseo(){
		self.validarPaseo()
		ninixs.forEach({ninix => ninix.usarPrendas()})
	}
	method validarPaseo() {
		if( not self.puedeSalirDePaseo()){
			self.error("Lxs niñxs de la familia"+ self + "no están listxs para salir de paseo ")
		}
	}
}
///////////////NINXS///////////////////
class Ninix{
	const property talle
	const property edad
	const property prendas = #{}
	
	method esPequenio(){
		return self.edad() < 4
	}
	method estaListo(){
		return self.tieneAlMenos(5) and self.tienePrendaAbrigoSuperior(3) and self.promedioCalidad(8)
	}
	method cantPrendasTotal(){
		return prendas.size()
	}
	method tieneAlMenos(cantPrendas) {
		return self.cantPrendasTotal() >= cantPrendas
	}
	method tienePrendaAbrigoSuperior(nivelAbrigo) {
		return prendas.any({prenda => prenda.nivelAbrigo()>=nivelAbrigo })
	}
	method promedioCalidad(_nivelCalidad) {
		return prendas.nivelDeCalidadPrenda(self).sum()/self.cantPrendasTotal()>_nivelCalidad
	}
	method prendaDeMaximaCalidad(){
		return prendas.max({prenda => prenda.nivelDeCalidadPrenda(self)})
	}
	method usarPrendas(){
		prendas.forEach({prenda => prenda.usar()})
	}
}
class NinixProblematicx inherits Ninix{
	const property juguete
	override method estaListo(){
		return self.tieneAlMenos(4) and self.tienePrendaAbrigoSuperior(3) and self.promedioCalidad(8)
									and self.tieneJugueteAcordeEdad()
	}
	method tieneJugueteAcordeEdad() {
		return self.edad() <= juguete.edadMaximaRecomendada() and  self.edad() >= juguete.edadMinimaRecomendada()
	}
}
/////////////JUGUETE//////////////////
class Juguete{
	const edadMaximaRecomendada = 10// Valores tomados
	const edadMinimaRecomendada = 0 //por default
	
	method edadMaximaRecomendada(){
		return edadMaximaRecomendada
	}
	method edadMinimaRecomendada(){
		return edadMinimaRecomendada
	}
}
////////////TALLES PRENDA/////////////
object s{}
object m{}
object l{}
object xl{}	

