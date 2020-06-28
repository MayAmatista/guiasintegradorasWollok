
class CarpaCervecera{
	const property limiteDeGenteAdmitida
	const property marcaDeCerveza
	var property tieneBanda //booleano
}
class JarraDeCerveza{
	const property capacidad
	const property marca
}

class Persona{
	const property peso
	var property jarrasDeCervezaQueCompro
	var property nivelDeAlcoholEnSangre
	const property leGustaEscucharMusicaTradicional
	const property nivelDeAguante
	
	method estaEbrix(){
		return nivelDeAlcoholEnSangre * peso > nivelDeAguante
	}
}
class Belga inherits Persona{
	
	method leGustaCerveza(cerveza){
		return cerveza.gramosDeLupulo()>4
	}
}
class Checo inherits Persona{
	method leGustaCerveza(cerveza){
		return cerveza.graduacion()>8
	}
}
class Aleman  inherits Persona{
	method leGustaCerveza(cerveza){
		return true
	}
}
/*Marcas
Existen varias marcas de cerveza. Están las marcas de cerveza rubia (como la Corona),
las marcas de cerveza negra (como la Guiness), y las marcas de cerveza roja (como la
Hofbräu). De cada marca se sabe su contenido de lúpulo, o sea, cuántos gramos de lúpulo
por litro llevan. También se conoce el país donde se fabrica.
La graduación de una cerveza es su porcentaje de alcohol en volumen. P.ej. una cerveza
de 10 % de graduación, tendrá 0,1 litro de alcohol por litro de cerveza. Cada marca de
cerveza rubia tienen cada una una graduación distinta. Por otro lado, la graduación de
una marca de cerveza negra se calcula como el mínimo entre la graduación reglamentaria
y el doble de su contenido de lúpulo. La graduación reglamentaria es mundial, o sea
que es única para todas las marcas de cerveza negra del mundo; puede cambiar con el
tiempo. La cerveza roja es similar a la negra. En particular, se fabrica con procedimientos
similares, pero que concentran más el alcohol. Por lo tanto, la graduación de una marca
de cerveza roja se calcula multiplicando el valor que correspondería a una cerveza negra
con la misma conguración, por 1.25. */
class Marca{
	const property gramosDeLupulo //Por litro
	const property paisDeOrigen
	const property porcentajeDeAlcohol
	method volumen(capacidadJarra){
		return capacidadJarra
	}
	
	method graduacionAlcoholica(capacidadJarra){
		return self.porcentajeDeAlcohol() * self.volumen(capacidadJarra)
	}
}
class CervezaRubia inherits Marca{
	
}
class CervezaNegra inherits Marca{
	const property graduacionReglamentaria
	override method graduacionAlcoholica(capacidadJarra){
		return 
	}
}
class CervezaRoja inherits Marca{
	
}