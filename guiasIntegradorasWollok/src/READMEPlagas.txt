Ejercicio 2: Plagas
Para el estudio de los efectos de las plagas sobre lugares y animales atacados se pide
modelar la situación con un sistema modelo con objetos.
Parte 1: Elementos buenos
Los lugares o animales, son elementos que pueden ser buenos o no para la vida de los
humanos. En este sistema vamos a contemplar:
Hogar: Un hogar es bueno si su nivel de mugre es la mitad del confort que ofrece,
o menos. Tanto el nivel de mugre como el de confort pueden variar de hogar a
hogar.
Huerta: Una huerta es buena si su nivel de producción supera un valor que es
desconocido a priori, pero que es el mismo para todas las huertas.
Mascota: Las mascotas son buenas si su nivel de salud supera las 15 unidades.
.Requerimiento: Saber si es bueno un lugar o un animal.
Parte 2: Plagas
Una plaga puede atacar a un elemento (lugar o animal) produciéndole un daño. Este
sistema modela cuatro posibles tipos de plagas: cucarachas, mosquitos, pulgas y garrapatas.
De cada plaga se conoce la cantidad de bichos que la integra (población). Algunas plagas
transmiten enfermedades, otras no. El daño que puede provocar sobre un lugar va a
depender de los factores mencionados, según lo que se describe a continuación.
Plaga de cucarachas: El nivel de daño que produce es la mitad de su población.
Transmiten enfermedades si la población es superior a 500.
Plaga de pulgas: El nivel de daño que produce es el doble de la población.
Transmiten enfermedades siempre.
Plaga de garrapatas: El nivel de daño y la transmisión de enfermedades tienen
exactamente el mismo comportamiento que las pulgas.
Plaga de mosquitos: El nivel de daño es el mismo que la población. Pueden
transmitir enfermedades o no según cada plaga, esto se determina para cada una
(por ejemplo, una plaga que esté infectada por dengue transmite enfermedades).
Requerimientos:
Saber el nivel de daño que produce una plaga
Saber si una plaga transmite o no enfermedades
Parte 3: Daño sobre las cosas o lugares
Cuando un elemento es atacado por una plaga, los efectos sobre el mismo dependen del
daño con el cual es atacado y si transmite enfermedades o no.
Hogar: La mugre aumenta en la misma cantidad que el nivel de daño que produce
la plaga, independientemente de si transmite o no enfermedades
Huerta: La huerta baja su nivel de producción en la cantidad de daño que produce
la plaga. Además recibe una disminución extra de 10 unidades si la plaga transmite
enfermedades.

Mascota: En caso de recibir una plaga que transmite enfermedades, el nivel
de salud disminuye en la cantidad de daño recibido. Si la plaga no transmite
enfermedades, entonces no le ocurre nada a la mascota.
Requerimiento: Que un lugar o animal sea atacado por una plaga y produzca sus
efectos
Parte 4: Efecto sobre la plaga al atacar un lugar o animal
Cuando una plaga ataca a un lugar, además de aplicar los efectos resueltos en el punto
anterior, su población crece un 10 %. Salvo en el caso de las garrapatas, cuya población
aumenta un 20 %.
Requerimiento: Que una plaga ataque un lugar o animal, aplicándose los efectos
resueltos en el punto anterior y modicando su población.