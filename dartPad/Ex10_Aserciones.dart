void main(){
  
  final mySquare = Square(side:10);

  
  print("""El lado del cuadrado es de :${mySquare._side}
  El area es igual a: ${mySquare.area}""");
  mySquare.side = -5;
  
}

class Square {
  double _side;
  
  Square({ required double side })
    : assert(side >0,'El valor del lado deb ser mayor a 0'),
     _side = side;

  double get area {
      return _side * _side;
  }

  set side(double value){
    print("Asignando un nuevo valor de: $value");
      if (value < 0) throw '';
    _side = value;
  }
  
  double calculateArea() {
  return _side * _side;
  }
}
