abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando!');
  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima}');
  void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar.');
  void descender(String velocidadMax) => print('Este animal puede descender a una velocidad de hasta ${velocidadMax}');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
  void correr(int max) => print('Estoy corriendo a una velocidad máxima de ${max} km/h');
  void trotar(bool estado) => print('Estoy trotando: ${estado}');
  void saltar(bool estado) => print('Estoy saltando: ${estado}');
}

mixin Nadador {
  void nadar() => print('Estoy nadando!');
  void sumergir(int max) => print('Puedo sumergirme hasta ${max} metros.');
  void respirar(bool estado) => print('Estoy respirando  bajo el agua: ${estado}');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Nadador, Caminante, Volador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}


class GatoBengali extends Gato {}
class TiburonToro extends Tiburon {}

void main() {
  final flipper = Delfin();
  print("Instanciando la clase de Delfin, y accediendo a sus funciones.");
  flipper.nadar();

  print("----------------------------------------------------");
  print("Instanciando la clase de Murcielago, y accediendo a sus funciones");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("----------------------------------------------------");
  print("Instanciando la clase de Pato, y accediendo a sus funciones");
  final pekines = Pato();
  pekines.volar();
  
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender("5km/h");
  pekines.caminar();
  pekines.nadar();
  
  
  

  print("----------------------------------------------------");
  print("Instanciando la clase de GatoBengali, y accediendo a sus funciones");
  final bengali = GatoBengali();
  bengali.caminar();
  bengali.correr(50);
  bengali.trotar(false);
  bengali.saltar(true);

  print("----------------------------------------------------");
  print("Instanciando la clase de TiburonToro, y accediendo a sus funciones");
  final toro = TiburonToro();
  toro.nadar();
  toro.sumergir(20);
  toro.respirar(true);
}
