Ejercicio 7: Oktubrefest
Ein Prosit! En Münich-Alemania, todos los años se festeja la Oktubrefest. Para esta gran
feria de comidas, entretenimientos y mucha cerveza nos piden a construir un programa en
objetos que modele el comportamiento de las personas en la esta. Al entrar en la esta
se pueden encontrar enormes carpas cerveceras, en donde muchísima gente se reune a
. . . bueno . . . tomar cerveza. Queremos controlar la entrada a estas carpas dependiendo
de la disponibilidad de la carpa y los gustos del público.
Jarras y Carpas
Las carpas cerveceras tienen un límite de gente admitida, algunas tienen una banda
para tocar música tradicional, y por supuesto que todas venden jarras de cerveza. De
cada jarra de cerveza sabemos su capacidad en litros y de qué marca es la cerveza. Cada
carpa sirve jarras de cerveza de sólo una marca (que depende de cada carpa).
Persona
De cada persona se sabe su peso, las jarras de cerveza que compró hasta el momento, si
le gusta escuchar música tradicional o no, y su nivel de aguante, que es un número. Una
persona está ebria si la cantidad de alcohol en sangre que tiene multiplicado por su peso
supera su aguante. Además, de cada persona interesará saber qué marcas de cerveza le
gustan. Se sabe que los belgas toman sólo cerveza con más de 4 gramos de lúpulo por
litro, a los checos les gustan las cervezas de más de 8 % de graduación (ver abajo qué es
la graduación de la cerveza), a los alemanes les gustan todas.
Marcas
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
con la misma conguración, por 1.25.
Se pide test, codicación completa, y diagrama de clases para los siguientes requerimientos:
1. Saber cuántos litros de alcohol aporta una jarra de cerveza. Ej: una jarra de cerveza
de medio litro de la marca `Hofbräu' (suponiendo que tiene 8 % de graduación
alcohólica) aporta 0,5 * 0,08 = 0,04 litros de alcohol.
2. Saber el total de litros de alcohol que ingirió una persona (en base a las jarras de
cerveza que compró).
3. Saber si una persona está ebria o no.
4. Saber si una persona quiere entrar a una carpa, es decir, si la carpa vende una
marca de cerveza que a él le guste y si cumple su preferencia sobre que haya o
no haya música. Los alemanes, además, requieren que haya una cantidad par de
personas en la carpa (antes de entrar ellos).
5. Saber si una carpa deja ingresar a una persona, o sea, si dejándola entrar no supera
su límite de personas y si la persona no está ebria.
6. Saber si una persona puede entrar a una carpa, es decir, si quiere entrar a la carpa
y la carpa lo deja entrar.
7. Que una persona entre a una carpa. Resolver la situación de una persona que
quiera ingresar a una carpa y no pueda por la falla de alguna condición resuelta
en los puntos anteriores.
8. Saber cuantos ebrios empedernidos hay dentro de una carpa. Los ebrios empedernidos
son los ebrios que todas las jarras que compraron, son de 1 litro ó más.
9. Saber si una persona es patriota, o sea, si todas las jarras de cerveza que compró
son del país del que proviene. P.ej. un alemán es patriota si todas las jarras de
cerveza que compró son alemanas.
10. Saber en qué carpas compró cerveza una persona.
11. Saber si dos personas fueron juntas. Esto se detecta porque compraron jarras de
cerveza exactamente en las mismas carpas.