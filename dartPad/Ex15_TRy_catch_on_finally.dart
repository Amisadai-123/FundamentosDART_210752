void main() async {
  
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    print('Fin del try y catch');
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parámetros en el URL');
  

//   Lo que hice fue agregar más control sobre los posibles errores que pueden surgir cuando intento hacer una petición simulada a una URL
//    usando la función httpGet. El flujo del programa ahora es un poco más completo y robusto, porque no solo captura excepciones específicas, 
//    sino que también se asegura de que se ejecute una sección final de código pase lo que pase.

// Primero, el programa empieza con un mensaje que indica que el programa ha comenzado. Luego, dentro de un bloque try, llamo a la función httpGetusando 
// await, para esperar a que la petición termine. Si todo va bien, la función devolvería un valor y lo imprimiría, pero como estoy lanzando una excepción 
// dentro de httpGet, eso no sucede.

// Lo que ocurre en lugar de eso es que se lanza una excepción del tipo Exception, con el mensaje "No hay parámetros en la URL". Al estar preparado con un bloque
//  on Exception, puedo capturar este tipo específico de error y mostrar un mensaje que indica que hubo una excepción.

// Si hubiera ocurrido otro tipo de error, el bloque catchmás general lo hubiera capturado. Esto es útil para manejar cualquier otro tipo de problema que no sea 
// una Exceptionespecífica.

// Finalmente, sin importar si hubo o no un error, el bloque finallyse ejecuta. En este caso, simplemente imprime un mensaje que indica que terminó el bloque 
// try-catch, lo que me asegura que siempre se ejecutará algo al final del intento de hacer la petición.

// Después de todo eso, el programa sigue su curso normal y se imprime el mensaje de "Fin del programa", mostrando que todo terminó de ejecutarse.





}

