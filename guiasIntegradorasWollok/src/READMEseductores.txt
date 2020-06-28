Ejercicio 3: Seductores
Un grupo de amigos programadores, cansados de fracasar en sus conquistas amorosas,
deciden armar, usando la programación orientada a objetos, un sistema que modele esta
actividad humana, con el n de aprender sobre la misma y cambiar su suerte.
Se sabe que el mundo se divide entre los seductores y los seducibles. Un seductor
intentará conseguir una cita con un seducible, y en el mejor de los casos, conformará
una pareja. En este modelo simplicado, no se contempla la posibilidad de que alguien
sea seductor y seducible a la vez.
Parte 1: Aceptar una cita
. Requerimiento: Saber si un seducible acepta una cita de un seductor o no, teniendo
en cuenta la siguiente información.
Un seducible nunca aceptará una cita si ya tiene pareja (salvo que el seductor sea su
pareja actual).
Tampoco aceptará una cita de un seductor que no sea de un género de su preferencia.
Para eso se conoce el género (Masculino, Femenino, Transexual, etc...). Por su parte,
cada seducible dene un conjunto con todos los géneros de su preferencia (ya que podría
ser 1 o más).
Es posible que un seducible se je en algunas características del seductor. Esto depende
de la personalidad del seducible. Las características surgen de tres niveles que se manejan
para cada seductor: intelectual, económico y de aspecto personal. Se describe más abajo
cómo se calculan estos valores.
Deben contemplarse estas opciones de personalidad de un seducible.
Cazafortunas: Solo aceptan una salida con un seductor millonario. Los millonarios
son aquellos seductores que tienen un nivel económico mayor a un valor que a priori
no es conocido, ya que se ajusta por inación. Este valor es el mismo entre todos
los seductores.

Militante: Necesita que el nivel intelectual del seductor sea superior a un valor
que varía entre cada seducible. Además, el seductor debe ser capaz de aportar a
la causa, esto puede darse por una ayuda económica (el seductor es millonario),
ó, porque el seductor tiene un aspecto personal que supera a la mitad de su nivel
intelectual.
Envidioso: Un envidioso solo acepta una cita si su rival también la aceptaría
Libre: No le exige nada adicional al seductor
Los niveles intelectual, económico y de aspecto personal de un seductor, se calculan
a partir de un valor base que se dene para cada uno. Estos valores base pueden
ser afectados positivamente o negativamente por ciertos artilugios que puede poseer
el seductor o no.
Nota: Por el momento el sistema acepta 4 tipos de artilugios distintos, pero se espera
incorporar más de una manera sencilla, sin necesidad de modicar el código escrito en
la clase que modele a los seductores.
Nota: Todos los porcentajes que se utilizan a continuación corresponden ser aplicados
sobre el valor base del aspecto en cuestión.
Billetera: Una billetera aumenta el nivel económico en la cantidad de pesos que
contiene la billetera. Además, aumenta en 10 % el aspecto personal. Sin embargo,
si el seductor es millonario, reduce su nivel intelectual en 20 %.
Auto: Mantener un auto es caro, por lo tanto el nivel económico disminuye en
una cantidad que corresponde al 10 % del precio del auto. Sin embargo, el aspecto
personal se incrementa en dos veces el precio del auto. No tiene inuencia alguna
sobre el nivel intelectual.
Reputación: Un seductor que tiene una reputación tiene valores absolutos variables
para cada nivel (intelectual, económico y aspecto personal) que pueden ser positivos
o negativos. Por ejemplo, un seductor cuyos valores base son: 5 de intelecto, 10 de
aspecto personal, y 15 de nivel económico, con una reputación de 10 de para el
intelecto, 4 para el aspecto personal y -6 para el económico queda con los valores:
15, 14 y 9 respectivamente.
Título de técnico programador: Aumenta el nivel intelectual en un 100 % y el
nivel económico en un 80 % y no cambia el aspecto personal.
Por otro lado, se sabe que estas reglas son levemente distintas para los seductores
estrellas (Chuck Norris, Guillermo Francella, Javier Mascherano, entre otro), ya que
las modicaciones que recibe de sus artilugios son el triple de lo que afectan a los demás
seductores.
Ejemplo: el nivel base económico de un seductor es 100, tiene una billetera con 10 pesos
y un título de técnico programador. El nivel económico total es 100 + 10 + 100*1.8 =
290. Pero si se tratara de chuck norris, sería 100 + 3 * (10 + 100*1.8) = 670
Parte 2: Seducir
. En esta parte, hay que incluir al modelo el acto por el cual un seductor seduce (OK,
o intenta seducir) a un seducible: invitarlo a una cita. Si el seducible está interesado,
es decir, acepta tener una cita (resuelto en el punto 1) la cita ocurre. Esto puede traer
consecuencias (cambios en el estado interno) sobre los artilugios del seductor (según
quien es el seducible). Si al terminar la cita, el seducible aceptaría tener una nueva cita,
entonces se ha formado una pareja.
Nota: Por cuestiones de simplicidad, el seducible sólo puede tener una pareja, pero no
hay requerimientos acerca de que el seductor tenga que ser monógamo. Por lo tanto,
una solución que solo acepte una pareja para el seductor es igual de válida que una que
acepte múltiples parejas. De hecho, para este modelo no es necesario registrar las parejas
de los seductores. Sí es necesario conocer la pareja de cada seducible (ver requerimiento
sobre seductores echados más abajo).
Con respecto a las consecuencias de la cita:
Si fue con un Cazafortunas, los artilugios del seductor sufren una consecuencia
de índole económica.
Si fue con un Envidioso, los artilugios del seductor sufren una consecuencia de
índole económica y otra de índole moral.
Si fue con un Libre, los artilugios del seductor sufren una consecuencia de índole
moral.
Si fue con un Militante, no ocurre nada.
Es importante saber que:
La billetera que sufre una consecuencia económica reduce su dinero en 10 % y no
hay cambios en las consecuencias de índole moral.
El precio del auto se reduce un 5 % tanto para una consecuencia de índole económico
como para uno de índole moral.
El título de técnico programador es inmune a las consecuencias económicas y
morales
La reputación disminuye 10 en el nivel de economía en caso de una consecuencia
económica. En el caso de una consecuencia moral, disminuye 5 en cada uno de los
los niveles intelectual y aspecto personal.
Requerimiento: Que un seductor seduzca a un seducible, obteniendo las modicaciones
en los estados de los objetos intervinientes en cada caso:
Actualización del estado interno de cada uno de los artilugios del seductor en caso
de ocurrir una cita.
Actualización de la pareja del seducible si corresponde.
Parte 3: Colecciones
Resolver cada uno de los siguientes requerimientos:
1. Un seductor debe ser capaz de identicar y devolver sus artilugios económicos
capos: Son aquellos que consiguen mejorar el nivel del seductor en un valor
importante. Para saber si un artilugio es capo, existe la siguiente fórmula:
modicación que aporta económicamente al seductor > 0.5 * nivel básico de
economía del seductor
2. Ostentación: Cuando un seductor ostenta, devuelve un atributo económico capo
cualquiera.
3. Dada una instancia de la clase Cupido que tiene una colección de seducibles,
obtener todos los seductores echados. Considerando como echado el hecho
de que sean pareja de un seducible de la colección de ese objeto cupido.
4. Elementos ostentosos de los echados: Es la colección que se forma con todos
los elementos con los cuales ostentan los seductores echados por cupido.
Parte 4: Agregados posteriores
Después de unos meses de uso del sistema, los programadores que lo concibieron empiezan
a notar una mejoría en sus capacidades de seducción. Fatalmente, l@s muchach@s se
ceban y piensan nuevos requerimientos, que según ellos ayudan a mejorar el modelo. Se
pide agregarlos al modelo desarrollado. Son estos:
1. Agregar la variante de seducibles con personalidad Cleptómano. Un Cleptómano
es como un Cazafortunas, salvo que en cada cita, antes de las consecuencias de
índole económica, le roba uno de sus artilugios robables. Entre los modelados, los
autos y las billeteras son robables, mientras que los títulos y la reputación no lo
son.
2. Agregar un nivel de cautela a cada seducible. Esto es la cantidad de citas que
requiere para aceptar a un seductor como pareja.
En el modelo hasta ahora, el nivel de cautela de todos los seducibles es 1: después
de la primera cita, si acepta otra, listo, ya es pareja. Un seducible con nivel de
cautela 3 requiere de 3 citas, si después de la tercera aceptaría una cuarta, recién
ahí se considera en pareja.
Para esto hay que agregar la información de cuántas citas lleva el seducible, y con
quién. Tener una cita con un seductor cancela la cuenta de citas que pudiera
llevar con otro.
3. Agregar la variante de seductor avispado, para quien las modicaciones de sus
artilugios aumentan al doble para los niveles intelectual y de aspecto personal, y
quedan igual para el nivel económico.
