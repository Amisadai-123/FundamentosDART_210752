void main() {
  
  emitNumber()
     .listen( (int value) {
        
       print( 'Stream value: $value' );
       
     }); 
}


Stream<int> emitNumber() async* {
  
  final valuesToEmit = [1,2,3,4,5];
  
  for( int i in valuesToEmit ) {
    await Future.delayed( const Duration(seconds: 1));
    yield i;
  }
  
//   Lo que hice aquí fue utilizar un Streamque funciona de manera asíncrona, pero con un flujo de valores predefinido.
//    El objetivo es emitir una serie de números uno por uno, pero en lugar de hacerlo de manera instantánea, lo hago de forma escalonada con una pausa entre cada número.

// Primero, en la función main(), llamo a emitNumber()y uso .listen()para "escuchar" los valores que se van emitiendo en el Stream. Cada vez que el
//  Streamemite un nuevo número, lo recibo y lo imprime en la consola con print('Stream value: $value').

// La parte interesante ocurre en la función emitNumber(), que está marcada con async*. El asterisco ( *) indica que la función va a generar un Streamy
//  emitirá valores de manera asíncrona usando la palabra clave yield.

// Dentro de la función, primero define una lista de llamadas valuesToEmitque contiene los números que quiero emitir: [1, 2, 3, 4, 5]. Luego, utilice un 
// ciclo forpara iterar sobre esos valores. Cada vez que paso por uno de ellos, hago que el programa espere 1 segundo usándolo await Future.delayed(), 
// para que los valores se emitan de forma escalonada.

// Después de la espera de un segundo, use yieldpara emitir el número actual del ciclo. Este proceso se repite para cada número en la lista. El ciclo continúa 
// hasta que todos los números han sido emitidos, es decir, después de 5 segundos en total, el Streamterminal de enviar valores.

// Entonces, lo que consigo con este código es que el programa emite un número cada segundo, desde 1 hasta 5
  
}

