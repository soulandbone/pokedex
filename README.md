# pokedex

## Instalación

1. Clona el repositorio:

```bash
git clone https://github.com/soulandbone/pokedex.git
```

2. Entra en la carpeta del proyecto

cd pokedex

3. Instala las dependencias de Flutter

flutter pub get

4. Ejecuta la aplicación en un emulador o dispositivo conectado

flutter run

En lo que respecta al proyecto, le di prioridad a las partes específicas de UI y Front que fueron solicitadas en la tarea. Para este proyecto utilicé freezed, google fonts, riverpod, riverpod with annotations, Dio y todas las dependencias necesarias para correr los paquetes anteriormente mencionados. Google Fonts fue el unico paquete que use por voluntad propia, el resto eran parte de los requerimientos del proyecto cómo parte del task.

Quiero mencionar que dado que mi foco fue en cumplir con los aspectos minimos del proyecto y le dediqué un tiempo importante a buscar los colores, fonts, tamaños y otras especificaciones que venian en el Figma, tratando de acercarme lo más posible al diseño propuesto . Me habria gustado hacer algunos añadidos fuera de lo explicitamente solicitado, pero no me dió el tiempo.

Lo que me habría gustado haber hecho es agregar local storage para los pokemones y dejar en cache de forma que las búsquedas fueran cada vez menos pesadas. Adicionalmente a mitad de camino tuve que cambiar el enfoque y los modelos en los que venía trabajando cuando me di cuenta de que la forma que habia elegido (para optimizar los tiempos de carga), demandaba una llamada única a la lista de pokemones, pero ese approach no me servía para luego filtrar por tipo. Estoy seguro que esa parte se puede optimizar, pero no tuve el tiempo necesario para hacerlo.

Por lo anterior tomé una decisión conciente de limitar la llamada del número de pokemones iniciales. Tuve una solución parcial que era la de cargar más pokemones pero involucraba muchos cambios y código y desistí por el tiempo que me tomaría, prefiriendo dejarlo de esta forma, especialmente porque el prompt era que esto era más un task de frontend y no tanto de manejo de backend. Adicionalmente y dado que sólo pude darle una mirada hacia el final del plazo, tampoco le dediqué tiempo a la búsqueda de pokemones en el buscador que estaba cómo parte de las imagenes, más no había una especificación explícita de realizar esa tarea,por lo tanto no implementé la lógica de esta parte, solo dejé la interfaz. Pero el seteo de filtros, favoritos y acceso a la información en detalle si la realicé por completo.

Respecto al uso de Inteligencia Artificial, mi uso principal se limitó a hacer troubleshooting cuando se me presentaban problemas (ejemplo uso de freezed y riverpod with annotations, ya que es la primera vez que usaba freezed y la primera vez que usaba riverpod con anotaciones, ya habia usado Riverpod sin generación de código eso si). En lineas generales no me gusta pedir soluciones directas a la inteligencia artificial, porque considero que le quita valor a mi aprendizaje, pero si la uso mucho para cuando tengo problemas que no identifico a primera vista de forma de ahorrar tiempo y al menos tener una idea más clara de dónde viene el problema. Pero si tengo una regla personal al uso de la IA, y es que nunca uso un código que no entiendo completamente. Creo que es una mala práctica y también deja precedentes para en futuro tener más problemas que los que se arreglaron con una mirada corto plazista.

Tomé especial cuidado de usar principios de Clean Architecture, aunque tomaba un poco más de tiempo (declarando incluso las interfaces abstract class para tener mayor decoupling), me gusta mantener la estructura clara y ordenada, incluyendo también el uso de constantes de Strings, Colores y otros para referenciarlos directamente y no hacerlo directamente, aunque al final del proyecto es posible que haya usado valores directamente cuando me sentia más presionado por el tiempo.

Muchas gracias por la oportunidad de participar en este proceso, ha sido entretenido para mi el realizarlo, y tomaré cómo tarea para los próximos días el implementar esos features que me habría gustado terminar en esta presentación, para mi aprendizaje personal.
