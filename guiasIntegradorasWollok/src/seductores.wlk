class Seductores{
	const property tipoDeSeductor
	const property nivelEconomico
	var property valorEconomicoAjustableAInflacion
	method esMillonario(){
		return self.nivelEconomico()> self.valorEconomicoAjustableAInflacion()
	}
}
class Seducibles{
	const property tipoDeSeducible
	var property pareja
	var property generoDePreferencia
	var property nivelIntelectualEsperado
	
	method aceptaCita(seductor){
		 return self.estaDisponiblePara(seductor) and self.esDePreferencia(seductor)
	}
	method esCitaDePareja(seductor){
		return seductor == pareja
	}
	method esSolterx(){
		return self.pareja()== "no tiene"
	}
	method esDeGeneroDepreferencial(seductor){
		return generoDePreferencia.contains({seductor.genero()})
	}
	method estaDisponiblePara(seductor){
		return self.esCitaDePareja(seductor) or self.esSolterx()
	}
	method esDePreferencia(seductor){
		return self.esDeGeneroDepreferencial(seductor) and self.tipoDeSeducible().aceptaCita(seductor)
	}
}
//OBJETOS MODELADOS PARA EL COMPORTAMIENTO DE LA PERSONALIDAD DE LOS SEDUCTORES//
object intelectual{}
object economico{}
object aspectoPersonal{}
//OBJETOS MODELADOS PARA EL COMPORTAMIENTO DE LA PERSONALIDAD DE LOS SEDUCIBLES//

object cazafortunas{
	method aceptaCita(seductor){
		return seductor.esMillonario()
	}
}
object militante{
	method aceptaCita(seductor){
		
	}
}
/*Militante: Necesita que el nivel intelectual del seductor sea superior a un valor
que varía entre cada seducible. Además, el seductor debe ser capaz de aportar a
la causa, esto puede darse por una ayuda económica (el seductor es millonario),
ó, porque el seductor tiene un aspecto personal que supera a la mitad de su nivel
intelectual */