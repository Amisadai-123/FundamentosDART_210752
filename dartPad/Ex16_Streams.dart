void main() {
  
  emitNumbers().listen( (value) {
     print('Stream value: $value');
  });
  
  
} 


Stream<int> emitNumbers() {
  
  return Stream.periodic( const Duration(seconds: 1), (value){

    return value;
  }).take(5);



//  Lo que hice aquí fue trabajar con Streams , que son como una serie de datos que se pueden emitir de forma asíncrona, uno tras otro, durante un cierto período
//   de tiempo.

// Primero, en la función main(), llamo a la función emitNumbers()que me devuelve un Streamde números. Para poder procesar esos valores que el Streamva emitiendo, uso .
// listen(). Básicamente, lo que pasa es que el programa se "suscribe" a ese flujo de datos, y cada vez que el Streamemite un nuevo valor, lo captura y lo imprime 
// con print('Stream value: $value').

// Luego, en la función emitNumbers(), estoy generando un Streamutilizando Stream.periodic(), que me permite emitir un valor cada segundo. Aquí, el primer argumento
//  que le paso es una duración de 1 segundo, que define la frecuencia con la que se van a emitir los valores.

// El segundo argumento es una función anónima que recibe un índice value, que es básicamente el número que se incrementa con cada emisión. Lo que hago es simplemente
//  devolver ese valor para que sea emitido por el Stream.

// Pero para que el flujo no sea infinito, use el método .take(5), que indica que solo quiero emitir 5 valores y luego detener el Stream. Así que, después de 5 segundos
// , el Streamdeja de emitir valores.

// En resumen, lo que logré fue que cada segundo, durante 5 segundos, se emite un número (empezando desde 0) y lo imprime en la consola como Stream value: 0, Stream value: 1, y 
//así hasta llegar a Stream value: 4. Después de eso, el flujo se cierra automáticamente.
 
}