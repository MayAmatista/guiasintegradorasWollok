/////////////ELEMENTOS/////////////////


class Hogar{
	var property nivelDeMugre
	var property nivelDeConfort
	
	method esBueno(){
		return self.nivelDeConfort()/2 >= self.nivelDeMugre()
	}
	method esAtacado(plaga){
		nivelDeMugre += plaga.danio()
	}
}
class Huerta{
	var property nivelDeProduccion
	const property valorDesconocido
	//Acá habría que pensar si vale la pena forzar el polimorfismo pasandole un valor al method por parametro
	// o hacerlo como esta planteado acá como atributo
	method esBueno(){
		return self.nivelDeProduccion()> self.valorDesconocido()
	}
	method esAtacado(plaga){
		if (plaga.transmiteEnfermedad()){nivelDeProduccion -= self.danioPorPlaga(plaga)}
	}
	method danioPorPlaga(plaga){
		return if (plaga.transmiteEnfermedad())  plaga.danio()+10
				else plaga.danio()
		}
}
class Mascota{
	var property nivelDeSalud
	
	method esBueno(){
		return self.nivelDeSalud() > 15
	}
	method esAtacado(plaga){
		if (plaga.transmiteEnfermedad()){nivelDeSalud -= plaga.danio()}
	}
}
///////////////P L A G A S////////////////////
class Plaga{
	var property poblacion
	method transmiteEnfermedad()
	method danio()
	method atacar(elemento){
		elemento.esAtacado(self)
		 poblacion += poblacion* 0.1
	}
}
class PlagaDeCuchararas inherits Plaga{
	override method danio(){
		return self.poblacion()/2
	}
	override method transmiteEnfermedad(){
		return self.poblacion() > 500
	}
}

class PlagaDePulgas inherits Plaga{
	override method danio(){
		return self.poblacion()*2
	}
	override method transmiteEnfermedad(){
		return true
	}
}

class PlagaDeGarrapatas inherits PlagaDePulgas{
	override method atacar(elemento){
		elemento.esAtacado(self)
		 poblacion += poblacion* 0.2
	}
}

class PlagaDeMosquitos inherits Plaga{
	var property estaInfectada = false
	override method danio(){
		return poblacion
	}
	override method transmiteEnfermedad(){
		return self.estaInfectada()
	}
	
}
