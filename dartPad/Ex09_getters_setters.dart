void main(){
    final mySquare = Square(_side: 18);

    mySquare._side = -32;

    print ('area: ${mySquare.area}');
  
  print ("""Lado del cuadro: ${mySquare._side}
  Area que ocupa: ${mySquare.calculateArea()}""");


}
class Square {
    double _side; //side * side

    Square({required double side})
      :_side = :side;

    double get area{
        return _side *_side;
    }
  
  

    set side (double value)
    {
      print('Asignando un valor al lado: $value');
      if (value <0) throw 'El valor del lado debe ser mayor a 0.';

      _side = value;

    }
  double calculateArea()
  {
    return side* side ;
  }
  
}