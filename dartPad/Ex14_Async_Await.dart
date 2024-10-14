void main() async {
  
  print('Inicio del programa');
  
  try {
    
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print( value );
    
  } catch (err) {
    print('Tenemos un error: $err');
  }
  
  
  print('Fin del programa');
}


Future<String> httpGet( String url ) async {
  
  await Future.delayed( const Duration(seconds: 1));
  
  throw 'Error en la petición';
  
//   return 'Tenemos un valor de la petición';


// Crea un programa que empieza con un mensaje que indica que el programa ha comenzado. 
// Luego, trata de hacer la petición simulada a través de una función llamada httpGet. Para esto, use asyncy
//  awaitporque el programa tiene que esperar a que esa petición termine antes de seguir.

// La función httpGetbásicamente simula lo que sería una llamada a un servidor, pero en lugar de hacer realmente una petición, 
// espera un segundo (como si estuviera cargando algo) y después lanza un error con la palabra clave throw. Esto representa que 
// algo salió mal durante la petición.

// En el programa principal, lo que hago es envolver esa llamada dentro de un bloque try-catchpara gestionar cualquier posible error. Así,
//  cuando ocurre el error, el programa no se detiene, sino que se captura y puedo imprimir un mensaje que dice que hubo un problema.

// Entonces, después de intentar hacer la petición y gestionar el error, el programa imprime un mensaje final indicando que todo terminó, sin importar si la petición falló o no.

// La clave de todo está en que, asyncy await, el programa sabe en qué parte tiene que esperar, y con try-catch, puedo controlar los errores sin que el programa
//  se detenga por completo.
  
}

